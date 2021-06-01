#!/bin/bash -e
# File  : backup.sh
# Author: lchannng <l.channng@gmail.com>
# Date  : 2021/06/01 12:05:35

backup_root=~/pi-backup
backup_dir=${backup_root}/`date '+%Y-%m-%d'`/
mkdir -p ${backup_dir}
rsync -avP --delete --files-from=./files.txt / ${backup_dir}
ln -snf ${backup_dir} ${backup_root}/latest
