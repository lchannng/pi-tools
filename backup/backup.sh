#!/bin/bash -e
# File  : backup.sh
# Author: lchannng <l.channng@gmail.com>
# Date  : 2021/06/01 12:05:35

backup_root=~/pi-backup
backup_dir=`date '+%Y-%m-%d'`
backup_path=${backup_root}/${backup_dir}/
mkdir -p ${backup_path}
rsync -arvP --delete --files-from=./files.txt / ${backup_path}
pushd ${backup_root}
ln -snf ${backup_dir} latest
tar zcvf pi-latest.tar.gz ${backup_dir}
popd
