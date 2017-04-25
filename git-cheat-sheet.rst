Git Cheat Sheet
===============

Install Git
-----------
Git for All Platforms
https://git-scm.com

Configure Tooling
-----------------

Sets the name you want attached to your commit transactions
  ``$ git config --global user.name "[name]"``


Sets the email you want attached to your commit transactions
  ``$ git config --global user.email "[email address]"``

Enables helpful colorization of command line output
  ``$ git config --global color.ui auto``

Create Repositories
-------------------

Start a new repository or obtain one from an existing URL


Switches to the specified branch and updates the working directory
  ``$ git checkout [branch-name]``

Creates a new local repository with the specified name
  ``$ git init [project-name] $ git merge [branch]``

Downloads a project and its entire version history
  ``$ git clone [url] $ git branch -d [branch-name]``

Based on
--------

* https://www.reddit.com/r/programming/comments/5uj9kc/git_cheat_sheet/
* https://services.github.com/resources/
* http://ohshitgit.com/
