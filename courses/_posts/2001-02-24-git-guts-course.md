---
layout: barewithrelated
title: Graphs, Hashes, an Compression, Oh My!
description: An advanced Git talk directed at very technical User Groups.
path: courses/_posts/2001-02-24-git-guts-course.md
---

Git is a version control system. We can look at it from that high level. Git is a content tracking system. Some teachers advise us to look at it from that lowered elevation. But I will take you to the very bottom. The floor. The code. The algorithms. The directed acyclic graph of hashed bit sequences made efficient through LZW compression and deferred garbage collection determined by node reachability via hash relationships.

"But why?", you may ask. "Why go this deep?" Git is a tool that works so well for so many. It mystically corrects anticipated `merge` conflicts. It's "where did code come from" results from `blame` are impressive. The ability to re-write history through `rebase` is awesome. The globally unique identifier nature of a hash-produced ref is revolutionary.

Uber-geeks are magic-slayers. We want and need to know precisely how things work. Like a hard 50 push-up workout, this study will make working with Git at the daily developer level a fraction of the effort --- like a mere ten push-ups. Let's dig into the guts of Git.

## Links
* [Talk Outline, Guide](http://teach.github.com)
* [Office Hours](http://training.github.com/web/free-classes/)
* [ProGit Chapter on Git Guts](http://git-scm.com/book/en/Git-Internals-Git-Objects)
* [Slides](https://speakerdeck.com/u/matthewmccullough/p/git-graphs-hashes-and-compression-oh-my-1)

## Slides

<script async class="speakerdeck-embed" data-id="4fde51a8dbe56c001f013368" data-ratio="1.77777777777778" src="//speakerdeck.com/assets/embed.js"></script>

---------------

# Git Graph and Hashing Internals

<http://www-cs-students.stanford.edu/~blynn/gitmagic/ch08.html>  
<http://www.kernel.org/pub/software/scm/git/docs/user-manual.html#object-details>  
<http://git-scm.com/book/ch9-2.html>

## Hashed File Contents to a Blob with Git
1. Create a Git repo. This could be done manually, but we'll use Git to save time.

        git init project1

2. Check my Git identity.

		git config user.name
		 Matthew McCullough
		 
         git config user.email
		 matthew@github.com
		
2. Show the lack of objects in the `.git/objects` directory.  

        tree .git/objects

        .git/objects
		├── info
		└── pack

2. Write a file containing "Hello World".

        echo "Hello World" > hello.txt

3. Git add and commit the `hello.txt` file, thus creating a hashed file.

        git add hello.txt

4. Show the object in the `.git/objects` directory.

        tree .git/objects
       
        .git/objects
		├── 55
		│   └── 7db03de997c86a4a028e1ebd3a1ceb225be238
		├── info
		└── pack

5. Git commit the `hello.txt` file, thus creating a hashed tree and commit object.

        git commit -m"First hello"

6. Show the object in the `.git/objects` directory.

        tree .git/objects
	
        .git/objects
		├── 55
		│   └── 7db03de997c86a4a028e1ebd3a1ceb225be238 #The File
		├── 97
		│   └── b49d4c943e3715fe30f141cc6f27a8548cee0e # The Tree
		├── cb
        │   └── 2fceb2ba8a075eb07991f0ac7d5a232350d531 # The Commit
		├── info
		└── pack

7. Why does the `cb2fceb2ba8a075eb07991f0ac7d5a232350d531` not match your commit? The username variation is part of the hash-evaluated input bytes.

## Verify Manually How We Got That File Hash
4. Take the known blob's uncompressed string and route it to `shasum`, the hashing program.

        printf "blob 12\000Hello World\n" | shasum
        
        557db03de997c86a4a028e1ebd3a1ceb225be238

5. `12` is the count of bytes in the file
6. `\000` is a `NUL`
7. `Hello World` is the file's contents
7. `\n` is the trailing line feed

## How Did Git Create That Hash?
1. Retrieve to-be-hased contents from a file and calculate the `shasum`, but this time, with Git plumbing:

        git hash-object hello.txt
        
        557db03de997c86a4a028e1ebd3a1ceb225be238

2. Or retrieve to-be-hased contents from `stdin`:

        echo 'Hello World' | git hash-object --stdin
                557db03de997c86a4a028e1ebd3a1ceb225be238

3. Then, with the `-w` option, store the resultant hashed object blob in `.git/objects`:

        echo 'Hello World' | git hash-object -w --stdin
                557db03de997c86a4a028e1ebd3a1ceb225be238

<http://stackoverflow.com/questions/1532405/how-to-view-git-objects-and-index-without-using-git>

## Manually read the file
The files within `.git/objects` are compressed with zlib. This can be shown by raw `cat`ing the contents of a file.

    cat .git/objects/55/7db03de997c86a4a028e1ebd3a1ceb225be238

## ZLib decompression of the file's blob
1. To view, uncompress with zpipe.

        ./zpipe -d < .git/objects/55/7db03de997c86a4a028e1ebd3a1ceb225be238  

2. Or use Perl and its Zlib functions.

        alias deflate="perl -MCompress::Zlib -e 'undef $/; print uncompress(<>)'"  
        deflate .git/objects/55/7db03de997c86a4a028e1ebd3a1ceb225be238


## Build an Index and Tree
1. Update the index from a file that isn't even on disk

        git update-index --add --cacheinfo 100644 557db03de997c86a4a028e1ebd3a1ceb225be238 hello.txt
        
2. Create the tree by writing the `index` as a tree to the `.git/objects` directory.

        git write-tree

5. Verify the tree was created.

	    git cat-file -p 97b49d4c943e3715fe30f141cc6f27a8548cee0e  
         100644 blob 557db03de997c86a4a028e1ebd3a1ceb225be238 hello.txt

    	cat .git/objects/97/b49d4c943e3715fe30f141cc6f27a8548cee0e
    	x+)JMU06g040031Q?H????+?(??``?r?,/?>??V2???YL?*%

## Build a commit
1. Build an initial (nil parent pointer) commit with a plumbing command and a pointer to a tree.

        echo 'First hello' | git commit-tree 97b49d4

2. Build a commit with a pointer to a tree and a pointer to a parent commit.
 
        echo 'Second hello' | git commit-tree 0155eb -p HASHBEFORE

--------------

## Integrity
1. [File system check with a porcelain command](http://www.kernel.org/pub/software/scm/git/docs/v1.7.10/git-fsck.html) of the relationships between objects with strict rules (legacy Git soft errors reported).

        git fsck --full --strict

2. Find the garbage-collectable objects.

        git fsck --unreachable

3. Pack Verification

        git verify-pack -v .git/objects/pack/packfilehere.idx

## Describe • Relative Positions
1. Finds nearest annotated tag and outputs an identifier of the tag name supplemented with a hash.

        git describe <COMMITREF>

2. Optionally, with `--tag`, finds non-annotated tags.

        git describe --tag <COMMITREF>


## Most recent commit
1. The reflog can show the most recent commit by integer position with an `@` syntax. 

        git show master@{1}

2. For this to work, there must be a log in `$GITDIR/logs/ref/...`

3. The branch was specified in the first example, but  `@{1}` is shorthand for the current branch.

## Upstream
Identify the upstream branch connected to the current local branch?

* `@{upstream}`
* `@{u}`
* `REFHERE@{u}`

## Tree of Commit
Commits are the outermost object. Trees are the middle level object. Commits point to a tree. This could be investigated long-hand by `git cat-file -p <COMMITHASH>`, but can be discovered short hand by the caret tree syntax.

    git show master^{tree}


---------------------------------------


## Find Commit by Message
* Can navigate through recursive tags to the commit.
* Commit message that starts with a string
	* `:/that fix`

## Blob Spec by Ref

* `HEAD:README.md` A certain commit ref's file's contents.

## Blob Spec during Merges

* `:0:` index
* `:1:` common ancestor
* `:2:` target
* `:3:` being merged in


## Translate commitish to hash

    git rev-parse

## History

    git hist --max-count=1

## Decode hash to content

    git cat-file -p HASH


## Commit an empty commit

    git commit --allow-empty -m 'Initial commit

## Empty tree
* Derive the empty tree hash

        git hash-object -t tree /dev/null

* Diff against the empty tree

        4b825dc642cb6eb9a060e54bf8d69288fbee4904

---------------------------

## CLI History

    git hash-object -t tree /dev/null
    
    git init project1
    echo "Hello World" > hello.txt
    git add hello.txt
    git commit -m"First hello"
    
    printf “blob 12\000Hello World\n” | shasum
    echo "Hello World" | git hash-object -w --stdin
    cat .git/objects/55/7db03de997c86a4a028e1ebd3a1ceb225be238

    alias deflate="perl -MCompress::Zlib -e 'undef $/; print uncompress(<>)'"
    deflate .git/objects/55/7db03de997c86a4a028e1ebd3a1ceb225be238
    
    git update-index --add --cacheinfo 100644 557db03de997c86a4a028e1ebd3a1ceb225be238 hello.txt
    
    git cat-file -t 4fd1
    tree .git
    git cat-file -p 4fd1
    git cat-file -t 97b4
    git cat-file -p 97b4

    cp -r project1 project1damaged
    cd project1damaged
    git log -1
    vim .git/objects/4f/d10bba3b8f15bdf3ff283f8135b6be8f5998f2
    git status
    git fsck
    git fsck --full --strict
    cd project1
    git branch feature1
    git branch
    git checkout feature1
    git l2
    git merge-base master
    git merge-base master feature1
    git checkout master
    git merge feature1 
    git rev-parse 4fd1
    git tag IJUSTLEFTMYCOMPUTERFORCOFFEE21
    generaterandomchanges 2 sample2 txt
    git tag NORMALTAG
    git tag -a SAMPLEWITHANNOTATED
    tree .git/objects
    git cat-file -p 0188
    git rev-parse SAMPLEWITHANNOTATED
    git rev-parse IJUSTLEFTMYCOMPUTERFORCOFFEE21
    git cat-file -t d22c
    git cat-file -t 0188
    
    git clone git@github.com:githubtraining/hellogitworld
    git ls-files
    git ls-remote
    git ls-remote | more
    git branch -v
    git rev-parse HEAD
    git cat-file -t HEAD
    git cat-file -p HEAD
    git rev-parse 'master^{tree}'
    git describe --tags master 
    git tag
    git tag -a ANANNOTATEDONE HEAD~1
    git describe HEAD
    git describe master
    git log --stat
    git show c594793
    git show c594793:build.gradle
    git show c594793:build.gradle | mate
    git branch feature2
    generaterandomchanges 2 master txt
    git checkout feature2
    generaterandomchanges 2 feature txt
    git merge master
    to.scratch
    cd hellogitworld
    
    git show HEAD
    git log
    git gc
