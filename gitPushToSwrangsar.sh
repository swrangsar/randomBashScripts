#!/bin/bash
git add *
git commit -am "committed at $(date +%Y%m%d%T)"
git push -u origin master
