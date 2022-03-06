# GitHub Flow

<p align="center">
<img width=100% height=100% src="https://uidaholib.github.io/get-git/images/workflow.png">
</p>

<hr --- />

### Configure tooling


##### Show current configuration
```sh
$ git config --list
```
##### Show repository configuration
```sh
$ git config --local --list
```
##### Show global configuration
```sh
$ git config --global --list
```
##### Show system configuration
```sh
$ git config --system --list
```
##### Set automatic command line coloring for Git for easy reviewing
```sh
$ git config --global color.ui auto
```
##### Set global editor for commit
```sh
$ git config --global core.editor vi
```


<hr --- />

### Create

##### Turn an existing directory into a git repository:
```sh
$ git init
```
##### Create a new local repository in a specific directory
```sh
$ git init <directory>
```
##### Clone (download) a repository that already exists on GitHub, including all of the files, branches, and commits:
```sh
$ git clone [url]
```

<hr --- />

### Local Changes


##### Changes in working directory
```sh
$ git status
```
##### Changes to tracked files
```sh
$ git diff
```
##### See changes/difference of a specific file
```sh
$ git diff <file>
```
##### Add all current changes
```sh
$ git add .
```
##### Add some changes
```sh
$ git add -p <file>
```
##### Commit all local changes in tracked files
```sh
$ git commit -a
```
##### Commit previously staged changes
```sh
$ git commit
```
##### Commit with message
```sh
$ git commit -m 'message here'
```
##### Commit skipping the staging area and adding message
```sh
$ git commit -am 'message here'
```
##### Commit to some previous date
```sh
$ git commit --date="`date --date='n day ago'`" -am "<Commit Message Here>"
```
##### Change last commit
```sh
$ git commit -a --amend
```
##### Amend with last commit but use the previous commit log message
```sh
$ git commit --amend --no-edit
```
##### Change Author date of last commit
```sh
$ git commit --amend --date="date"
```
##### Show list of all saved stashes
```sh
$ git stash list
```
##### Move uncommitted changes from current branch to some other branch<br>
```sh
$ git stash
$ git checkout branch2
$ git stash pop
```
##### Restore stashed changes back to current branch
```sh
$ git stash apply
```
##### Restore particular stash back to current branch
```sh
$ git stash apply stash@{stash_number}
```
##### Remove the last set of stashed changes
```sh
$ git stash drop
```

<hr --- />

### Commit History

##### Show all commits, starting with newest
```sh
$ git log
```
##### Show all the commits in one line format
```sh
$ git log --oneline
```
##### Show all commits of a specific user
```sh
$ git log --author="username"
```
##### Show changes over time for a specific file
```sh
$ git log -p <file>
```
##### Display commits that are present only in remote/branch in right side
```sh
$ git log --oneline <origin/master>..<remote/master> --left-right
```
##### Who changed
```sh
$ git blame <file>
```
##### Show Reference log
```sh
$ git reflog show
```
##### Delete Reference log
```sh
$ git reflog delete
```

<hr --- />

### Branches & Tags

##### List all local branches
```sh
$ git branch
```
#### List local/remote branches
```sh
$ git branch -a
```
##### List all remote branches
```sh
$ git branch -r
```
##### Switch HEAD branch
```sh
$ git checkout <branch>
```
##### Checkout single file from different branch
```sh
$ git checkout <branch> -- <filename>
```
##### Create and switch new branch
```sh
$ git checkout -b <branch>
```
##### Create a new branch from an exiting branch and switch to new branch
```sh
$ git checkout -b <new_branch> <existing_branch>
```
##### Checkout and create a new branch from existing commit
```sh
$ git checkout <commit-hash> -b <new_branch_name>
```
##### Create a new branch based on your current HEAD
```sh
$ git branch <new-branch>
```
##### Create a new tracking branch based on a remote branch
```sh
$ git branch --track <new-branch> <remote-branch>
```
##### Delete a local branch
```sh
$ git branch -d <branch>
```
##### Rename current branch to new branch name
```shell
$ git branch -m <new_branch_name>
```
##### Force delete a local branch
<em><sub>You will lose unmerged changes!</sub></em>

```sh
$ git branch -D <branch>
```
##### List all tags
```sh
$ git tag
```
##### List all tags with their messages (tag message or commit message if tag has no message)
```sh
$ git tag -n
```

<hr --- />

### Update & Publish

##### List all current configured remotes
```sh
$ git remote -v
```
##### Show information about a remote
```sh
$ git remote show <remote>
```
##### Add new remote repository, named &lt;remote&gt;
```sh
$ git remote add <remote> <url>
```
##### Rename a remote repository, from &lt;remote&gt; to &lt;new_remote&gt;
```sh
$ git remote rename <remote> <new_remote>
```
##### Remove a remote
```sh
$ git remote rm <remote>
```
<em><sub>Note git remote rm does not delete the remote repository from the server. It simply removes the remote and its references from your local repository.</sub></em>

##### Download all changes from &lt;remote&gt;, but don't integrate into HEAD
```sh
$ git fetch <remote>
```
##### Updates your current local working branch with all new commits from the corresponding remote branch on GitHub:
```sh
$ git pull
```
<sub><em>`git pull` is a combination of `git fetch` and `git merge`</sub></em>
##### Download changes and directly merge/integrate into HEAD
```sh
$ git remote pull <remote> <url>
```
##### Get all changes from HEAD to local repository
```sh
$ git pull origin master
```
##### Get all changes from HEAD to local repository without a merge
```sh
$ git pull --rebase <remote> <branch>
```
##### Publish local changes on a remote
```sh
$ git push remote <remote> <branch>
```
##### Delete a branch on the remote
```sh
$ git push <remote> --delete <branch> (since Git v1.7.0)
```
##### Publish your tags
```sh
$ git push --tags
```

<hr --- />

### Merge & Rebase

##### Merge branch into your current HEAD
```sh
$ git merge <branch>
```
##### List all branches that are already merged into master
```sh
git branch --merged master
```
##### Remove branches that have already been merged with master
```sh
$ git branch --merged master | grep -v '^\*' | xargs -n 1 git branch -d
```
##### Rebase your current HEAD onto &lt;branch&gt;<br>
<em><sub>Don't rebase published commit!</sub></em>
```sh
$ git rebase <branch>
```
##### Abort a rebase
```sh
$ git rebase --abort
```
##### Continue a rebase after resolving conflicts
```sh
$ git rebase --continue
```

<hr --- />

### Undo

<em><sub> **CAUTION! Changing history can have nasty side effects. If you
need to change commits that exist on GitHub (the remote),
proceed with caution.**</sub></em>

##### Discard all local changes in your working directory
```sh
$ git reset --hard HEAD
```
##### Get all the files out of the staging area(i.e. undo the last `git add`)
```sh
$ git reset HEAD
```
##### Discard local changes in a specific file
```sh
$ git checkout HEAD <file>
```
##### Revert a commit (by producing a new commit)
```sh
$ git revert <commit>
```
##### Reset your HEAD pointer to a previous commit and discard all changes since then
```sh
$ git reset --hard <commit>
```
##### Reset your HEAD pointer to a remote branch current state.
```sh
$ git reset --hard <remote/branch> e.g., upstream/master, origin/my-feature
```
##### Reset your HEAD pointer to a previous commit and preserve all changes as unstaged changes
```sh
$ git reset <commit>
```
##### Reset your HEAD pointer to a previous commit and preserve uncommitted local changes
```sh
$ git reset --keep <commit>
```
##### Remove files that were accidentally committed before they were added to .gitignore
```sh
$ git rm -r --cached .
$ git add .
$ git commit -m "remove xyz file"
```
