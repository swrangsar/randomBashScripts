#!/bin/bash
git add *
git commit -am "commit at $(date +%b%d,%Y_%T)"
git push -u origin master
