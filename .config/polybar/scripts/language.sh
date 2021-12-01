#!/bin/bash

current=$(setxkbmap -query | grep -i layout | awk '{print $2}')
echo $current
