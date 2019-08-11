#!/usr/bin/env bash

mkdir data
cd data
hdfs dfs -get $PAI_DEFAULT_FS_URI/data/datasets/2019undercoco.zip
unzip -q 2019undercoco.zip
mv ./2019coco ./coco
cd ..
cd core/models/py_utils/_cpools/
python3 setup.py install --user
cd ../../../external
make
cd ../..
pip3 install tqdm
pip3 install pycocotools


