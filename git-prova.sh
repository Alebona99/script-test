#!/bin/bash
git reset --hard
git subtree pull --prefix subtreeDirectory https://github.com/Alebona99/test_repo.git master --squash | git merge --no-verify
git commit -m 'Merge e pull subtree'
git push origin main