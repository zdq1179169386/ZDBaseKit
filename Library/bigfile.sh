#!/bin/bash
#删除某个 framework 和 git 中对应的历史记录

frameworkName = "ZDBaseKit.framework"
git filter-branch -f --tree-filter 'rm -rf Library/$frameworkName' HEAD
git push origin --force

