#!/bin/bash
#===============================================================================
#
#          FILE: merge-upstream.sh
# 
#         USAGE: ./merge-upstream.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: James Zhu (000), zhujian0805@gmail.com
#  ORGANIZATION: JZ
#       CREATED: 2015年03月27日 11时52分35秒 CST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

#为了让项目与源项目同步，我们首先要将源项目pull到本地
#git remote add ngqa https://github.com/howe/ngqa.git #添加一个别名，指向ngqa项目的位置
#git pull ngqa master #pull ngqa下面的master分支
cd ~/cheat
#git remote add git@github.com:chrisallenlane/cheat.git
git checkout master
git pull git@github.com:chrisallenlane/cheat.git
git commit -m 'merging upstream'
git push origin master
