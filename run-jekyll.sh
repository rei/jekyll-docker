#!/bin/bash -xv
cd /data
jekyll $@
chmod -R 655 _site