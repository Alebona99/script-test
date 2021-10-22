#!/bin/bash

# switch back to tracking branch, fetch & rebase.
git remote add -f test https://github.com/Alebona99/test_repo.git
git checkout upstream/jsdoc
git pull jsdoc-upstream/master

# update the separate branch with changes from upstream
git subtree split -q --prefix=templates/default --annotate="[jsdoc] " --rejoin -b merging/jsdoc

# switch back to master and use subtree merge to update the subdirectory
git checkout master
git subtree merge -q --prefix=templates/default --squash merging/jsdoc