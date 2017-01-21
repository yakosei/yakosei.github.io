#!/bin/bash
selinux_conf=/etc/selinux/config
setenforce 0
cp -p $selinux_conf $selinux_conf$(date +'%Y%m%d-%H%M%S.org')
sed -r 's/^[ \t]*(SELINUX=[ep].+)/#\1\n# '"$edit_comment"'\nSELINUX=disabled/g' $selinux_conf -i
[ "$(diff $selinux_conf $selinux_conf$prefix)" ] || rm -f $selinux_conf$prefix