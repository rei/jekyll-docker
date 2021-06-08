#!/bin/sh
cd /data
jekyll $@
chmod -R 755 _site
