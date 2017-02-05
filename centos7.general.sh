#!/bin/bash
curl iac.yakosei.com/centos7.utils.sh | bash
curl iac.yakosei.com/centos7.selinux.sh | bash
curl iac.yakosei.com/centos7.timezone.sh | bash
curl iac.yakosei.com/centos7.locale.sh | bash
curl iac.yakosei.com/centos7.chrony.sh | bash
curl iac.yakosei.com/profile.sh | bash
curl iac.yakosei.com/vimrc.sh | bash
[ "$(grep yakosei ~/.ssh/authorized_keys)" ] || { mkdir -p -m 700 ~/.ssh; curl iac.yakosei.com/keys >>~/.ssh/authorized_keys; }