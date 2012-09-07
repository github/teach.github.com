#!/usr/bin/perl
## Author: Roy Lyons, CME Group
sub noconfigfile {
    open NEWCFG, "> split.cfg" or die "We couldn't even write a split.cfg example...\n";
    print NEWCFG "# Format:\n# repository_to_clone subdir1 subdir2 subdir3 subdir4 ... subdirn\n# where each subdir becomes a new repository\n";
    close NEWCFG;
    die "You must have a valid \"split.cfg\" file!\n";
}
$directorylocation=`pwd`;
chomp($directorylocation);
open CONFIGFILE, "< split.cfg" or noconfigfile;
foreach my $line (<CONFIGFILE>) {
    unless($line =~ /^\#/) {
        my @cfgline = split(/ /, $line);
        my $repo = shift(@cfgline);
        foreach my $splitpattern (@cfgline) {
            chomp($splitpattern);
            my $namerchanger=$splitpattern;
            $namerchanger =~ s/[\\\/]/_/g;
            my @reposplit = reverse split(/[\\\/]/, $repo);
            my $reposhort=$reposplit[0];
            chomp($reposhort);
            my $newreponame="${namerchanger}_${reposhort}";
            my $cmd = "git clone --no-hardlinks $repo $newreponame";
            @stdout = qx [$cmd];
            $rc     = $?;
            chdir "$newreponame";

            my $cmd = "git filter-branch --prune-empty --subdirectory-filter $splitpattern -- --all";
            @stdout = qx [$cmd];
            $rc     = $?;

            my $reftmp='git for-each-ref --format="%(refname)" refs/original/';
            open REFLIST, "$reftmp |";
            foreach my $ref (<REFLIST>) {
                chomp($ref);
                my $cmd = "git update-ref -d $ref";
                @stdout = qx [$cmd];
                $rc     = $?;
            }
            close REFLIST;
            my $cmd = "git reflog expire --expire=now --all";
            @stdout = qx [$cmd];
            $rc     = $?;
            my $cmd = "git reset --hard";
            @stdout = qx [$cmd];
            $rc     = $?;
            my $cmd = "git gc --aggressive --prune=now";
            @stdout = qx [$cmd];
            $rc     = $?;
            chdir "$directorylocation";
        }

    }

}
close CONFIGFILE;