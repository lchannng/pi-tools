#!/bin/bash -e
# File  : gen.sh
# Author: lchannng <l.channng@gmail.com>
# Date  : 2021/06/01 14:39:33

curl -O http://www.ipdeny.com/ipblocks/data/countries/cn.zone

ipset_file=china.conf

echo "create china hash:net family inet hashsize 4096 maxelem 65536" > ${ipset_file}
for i in $(cat ./cn.zone ); do
    echo "add china ${i}" >> ${ipset_file}
done
