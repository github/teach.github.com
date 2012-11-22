#!/opt/local/bin/python

# Via Mattias Svala (brasse)
# https://github.com/brasse/post_receive_email.py

from __future__ import with_statement

import re
import smtplib
import subprocess
import sys
import time
import traceback
from collections import defaultdict
from email.mime.text import MIMEText
from StringIO import StringIO

MAILINGLIST = 'hooks.mailinglist'
EMAILPREFIX = 'hooks.emailprefix'
SMTP_SUBJECT = 'hooks.smtp-subject'
SMTP_HOST = 'hooks.smtp-host'
SMTP_PORT = 'hooks.smtp-port'
SMTP_SENDER = 'hooks.smtp-sender'
SMTP_SENDER_PASSWORD = 'hooks.smtp-sender-password'
POST_RECEIVE_LOGFILE = 'hooks.post-receive-logfile'

class Mailer(object):
    def __init__(self, smtp_host, smtp_port,
                 sender, sender_password, recipients):
        self.smtp_host = smtp_host
        self.smtp_port = smtp_port
        self.sender = sender
        self.sender_password = sender_password
        self.recipients = recipients

    def send(self, subject, reply_to, message):
        if not self.recipients:
            return

        mime_text = MIMEText(message, _charset='utf-8')
        mime_text['From'] = self.sender
        mime_text['Reply-To'] = reply_to
        mime_text['To'] = ', '.join(self.recipients)
        mime_text['Subject'] = subject

        server = smtplib.SMTP(self.smtp_host, self.smtp_port)
        server.ehlo()
        server.starttls()
        server.ehlo()
        server.login(self.sender, self.sender_password)
        server.sendmail(self.sender, self.recipients, 
                        mime_text.as_string())
        server.rset()
        server.quit()

def git_config_get(name):
    p = subprocess.Popen(['git', 'config', '--get', name], 
                         stdout=subprocess.PIPE)
    # Cut off the last \n character.
    return p.stdout.read()[:-1]

def git_show(hash):
    p = subprocess.Popen(['git', 'show', hash], stdout=subprocess.PIPE)
    return p.stdout.read()

def git_rev_parse(hash, short=False):
    args = ['git', 'rev-parse']
    if short:
        args.append('--short')
    args.append(hash)
    p = subprocess.Popen(args, stdout=subprocess.PIPE)
    # Cut off the last \n character.
    return p.stdout.read()[:-1]

def get_commit_info(hash):
    p = subprocess.Popen(['git', 'show', '--pretty=format:%s%n%h', '-s', hash], 
                         stdout=subprocess.PIPE)
    s = StringIO(p.stdout.read())
    def undefined(): 
        return 'undefined'
    info = defaultdict(undefined)
    for k in ['message', 'hash']:
        info[k] = s.readline().strip()
    return info

def process_commits(commits, mailer, subject_prefix, subject_template):
    for ref_name in commits.keys():
        use_index = len(commits[ref_name]) > 1
        if not subject_template:
            subject_template = ('%(prefix)s %(ref_name)s commit ' + 
                                ('(#%(index)s) ' if use_index else '') +
                                '%(hash)s')
        for i, commit in enumerate(commits[ref_name]):
            info = get_commit_info(commit)
            info['ref_name'] = ref_name
            info['prefix'] = subject_prefix
            info['index'] = i + 1
            subject = subject_template % info
            message = git_show(commit)
            match = re.search(r'Author: (.+)', message)
            assert match
            reply_to = match.group(1)
            mailer.send(subject, reply_to, message)
            

def get_commits(old_rev, new_rev):
    p = subprocess.Popen(['git', 'log', '--pretty=format:%H', '--reverse',  
                          '%s..%s' % (old_rev, new_rev)], 
                         stdout=subprocess.PIPE)
    return p.stdout.read().split('\n')

def parse_post_receive_line(l):
    return l.split()

def post_receive(mailer, subject_prefix, subject_template=None):
    lines = sys.stdin.readlines()
    commits = {}
    for line in lines:
        old_rev, new_rev, ref_name = parse_post_receive_line(line)
        commits[ref_name] = get_commits(old_rev, new_rev)
    process_commits(commits, mailer, subject_prefix, subject_template)

def get_config_variables():
    def optional(variable):
        config[variable] = git_config_get(variable)
    def required(variable, type_=str):
        v = git_config_get(variable)
        if not v:
            raise RuntimeError('This script needs %s to work.' % variable)
        config[variable] = type_(v)
    def recipients(variable):
        v = git_config_get(variable)
        config[variable] = [r for r in re.split(' *, *| +', v) if r]

    config = {}
    optional(EMAILPREFIX)
    optional(SMTP_SUBJECT)
    required(SMTP_HOST)
    required(SMTP_PORT, int)
    required(SMTP_SENDER)
    required(SMTP_SENDER_PASSWORD)
    recipients(MAILINGLIST)
    return config

def main():
    log_file_path = git_config_get(POST_RECEIVE_LOGFILE)
    with open(log_file_path, 'a') as log_file:
        try:
            config = get_config_variables()
            mailer = Mailer(config[SMTP_HOST], config[SMTP_PORT],
                            config[SMTP_SENDER], config[SMTP_SENDER_PASSWORD],
                            config[MAILINGLIST])
            post_receive(mailer, config[EMAILPREFIX], config[SMTP_SUBJECT])
        except:
            log_file.write('%s\n' % time.strftime('%Y-%m-%d %X'))
            traceback.print_exc(file=log_file)

if __name__ == '__main__':
    main()
