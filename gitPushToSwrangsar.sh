#!/bin/bash
git add *
git commit -am "commit at $(date +%Y%m%d%T)"
git push -u origin master
