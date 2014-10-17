#!/bin/bash - 
#===============================================================================
#
#          FILE: startconky.sh
# 
#         USAGE: ./startconky.sh 
# 
#   DESCRIPTION: start conky system monitor
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Zur 
#  ORGANIZATION: 
#       CREATED: 17.10.2014 15:01
#      REVISION: 0.0
#===============================================================================

set -o nounset                              # Treat unset variables as an error

sleep 10
/usr/bin/conky&

