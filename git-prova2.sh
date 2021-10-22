#!/bin/bash

# switch back to tracking branch, fetch & rebase.
git remote add -f test https://github.com/Alebona99/test_repo.git
git checkout --track origin/master
git pull

# update the separate branch with changes from upstream
git subtree split -q --prefix=subtreeDirectory/prova1 --rejoin -b merging/script

# switch back to master and use subtree merge to update the subdirectory
git checkout main
git subtree merge -q --prefix=subtreeDirectory/prova1 --squash merging/script
