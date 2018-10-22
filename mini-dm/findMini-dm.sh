#!/bin/bash
result=`find ~/Qualcomm/ -name "mini-dm" -type f`
echo $result
cp -a $result ./

