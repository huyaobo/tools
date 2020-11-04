#!/bin/bash

git config --global user.name "huyaobo"
git config --global user.email "huyaobo@xiaomi.com"
# git config --global pull.rebase true
git config --global core.editor "vim"
#fix git branch goto git edit status
git config --global core.pager mor

ssh-keygen -t rsa -C  "huyaobo@xiaomi.com"
