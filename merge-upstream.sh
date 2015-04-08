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

cd ~/cheat
git checkout master
git pull git@github.com:chrisallenlane/cheat.git
git commit -m 'merging upstream'
git push origin master
