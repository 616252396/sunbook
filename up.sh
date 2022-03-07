#!/usr/bin/env bash
#发布
rm -rf /data/stock/sphinx-demo/build/*

make html
make singlehtml
git pull
git add *
git commit -m test
git push
ssh sun	 "cd /data/stock/sunbook/;
git pull;"