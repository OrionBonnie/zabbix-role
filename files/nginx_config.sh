#!/bin/bash
cd /tmp/nginx-$2
./configure --prefix=$1 --user=nginx --group=nginx
