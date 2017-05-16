################################################################################
                                Git Cheat Sheet
################################################################################

Install Git
--------------------------------------------------------------------------------
Git can be downloaded from `git-scm.com`_.

Configure Tooling
--------------------------------------------------------------------------------
Set the name you want attached to your commit transactions

``git config --global user.name [name]``

Set the email you want attached to your commit transactions

``git config --global user.email [email address]``

Enable helpful colorization of command line output

``git config --global color.ui auto``

View all global settings

``git config --global -l``

Create Repositories
--------------------------------------------------------------------------------
Start a new repository or obtain one from an existing URL

Create a new local repository with ``[project name]``

``git init [project name]``

Download a project and its entire version history

``git clone [url]``

Review History
--------------------------------------------------------------------------------
Browse and inspect the evolution of project files

List all new or modified files not yet committed

``git status``

Show file differences not yet staged

``git diff``

Show file differences between staging and the last file version

``git diff --cached``

Show all staged and unstaged
``git diff HEAD``

Show the changes between ``[a]`` and ``[b]``, where [a] and [b] can be branches or commits.

``git diff [a] [b]``

Lists version history for the current branch

``git log --pretty=oneline``

Lists version history for a file, including renames

``git log --follow [file]``

Output metadata and content changes of the specified [commit] (and [file])

``git show [commit](:[file])``

List every change of HEAD across all branches

``git reflog``

List the change dates and authors for a file

``git blame [file]``

List all developers

``git shortlog -s -n -e``

Display a graph of branches

``git log --decorate --graph --all --date=relative``

``git log --decorate --graph --all --oneline``

Staging and Committing
--------------------------------------------------------------------------------
Changed files can be prepared for a commit with the `git add` command. After staged, files can be commited, so a snapshot is taken.

Snapshot the file in preparation for versioning

``git add [file]``

Snapshot all changed files in preparation for versioning

``git add .``

Unstage file(s), but preserve its contents

``git reset [file]s``

Record file snapshots permanently in version history

``git commit -m "[descriptive message]"``

Record all chaned files permanently in version history

``git commit -am "[descriptive message]"``

Branches
--------------------------------------------------------------------------------
Name a series of commits and combine completed efforts.

Lists all branches, local and remote

``git branch -av``

Create a new branch

``git branch [branch]``

Switch to the specified branch and update the working directory

``git checkout [branch]``

Create and checkout a new branch in one step

``git checkout -b [branch]``

Delete the specified local branch

``git branch -d [branch]``

Delte the specified remote branch

``git push [origin] --delete [branch]``


Refactor Filenames
--------------------------------------------------------------------------------
Relocate and remove versioned files

Deletes the file from the working directory and stages the deletion

``git rm [file]``

Removes the file from version control but preserves the file locally

``git rm --cached [file]``

Changes the file name and prepares it for commit

``git mv [file-original] [file-renamed]``

Suppress Tracking
--------------------------------------------------------------------------------
Exclude temporary files and paths. A text file named ``.gitignore`` suppresses accidental versioning of files and paths matching the specified patterns.

Example ``.gitignore``::

  # This is a comment
  *.log
  temp-*
  build/        # All 'build'-directories
  /rootdir/     # Only the 'rootdir' in the root of the 
                # git repository


Lists all ignored files in this project

``git ls-files --other --ignored --exclude-standard``

Generate a ``.gitignore`` for your needs at `gitignore.io`_.

Save Fragments
--------------------------------------------------------------------------------
Shelve and restore incomplete changes

Temporarily stores all modified tracked files

``git stash``

Lists all stashed changesets

``git stash list``

Restores the most recently stashed files

``git stash pop``

Discards the most recently stashed changeset

``git stash drop``

Revert Changes
--------------------------------------------------------------------------------
Erase mistakes and craft replacement history

Undo all commits after ``[commit]``, preserving changes locally

``git reset [commit]``

Discard all history and changes back to the specified commit

``git reset --hard [commit]``

Find the point you want to revert to and revert to it. This is Gits magic time machine.

``git reflog``

``git reset HEAD@{[index]}``

Discard all unstaged changes. 

``git checkout -- .``

Synchronize Changes
-------------------
Register a repository bookmark and exchange version history

Download all history from the repository [bookmark]. [bookmark] is usually “origin” and can be omitted. This does not merge.

``git fetch [bookmark]``

Combine [bookmark] branch into current local branch

``git merge [bookmark]/[branch]``

Upload [branch] commits to the remote repository.

``git push [bookmark] [branch]``

Download bookmarks history and incorporates changes.

``git pull``

Download bookmarks history and rebase history, thus a merge is not shown.

``git pull --rebase``


Pull for fast-forward only (eliminating a chance for unintended merging).
``git pull --ff-only``

Tagging
--------------------------------------------------------------------------------
List all tags
``git tag``

Create an annotated tag, which is the prefered kind.

``git tag -a [mytag]``

Tag an old commit

``git tag -a [mytag] [checksum (or part of it)]``

Tags must be pushed explicit

``git push [origin] [mytag]``

Push all tags

``git push [origin] --tags``

To checkout a tag, check it out in a new branch

``git checkout -b [mytag] [mytag]``

Miscellaneous
--------------------------------------------------------------------------------

Time to go home. Just push everything. What could go wrong?

``alias git-fortune='git add . && git commit -m "`fortune`" && git push'``

Getting Help
--------------------------------------------------------------------------------

Getting quick help to a specific command.

``git [command] --help``

Read the offical documentation at `git-scm.com/docs`_. Or read the book `Pro Git`_.


About
--------------------------------------------------------------------------------
This Cheat Sheet can be found at https://github.com/mogoh/cheat-sheets/. Forks and pull requests are welcome.

This Cheat Sheet is based on:

* https://www.reddit.com/r/programming/comments/5uj9kc/git_cheat_sheet/
* https://services.github.com/on-demand/downloads/github-git-cheat-sheet.pdf
* http://ohshitgit.com/
* https://zeroturnaround.com/rebellabs/git-commands-and-best-practices-cheat-sheet/

.. _git-scm.com/docs: https://git-scm.com/docs
.. _git-scm.com: https://git-scm.com
.. _Pro Git: https://git-scm.com/book/en/v2
.. _gitignore.io: https://www.gitignore.io/
