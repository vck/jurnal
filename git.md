# pull single git lfs file

`git lfs pull -I filename`

# show git-added diff

git diff --cached

# git lfs problem: Encountered 15 file(s) that should have been pointers, but weren't

- git rm .gitattributes
- git stash

# cache git cred for given timeout

git config --global credential.helper 'cache --timeout=3600'
