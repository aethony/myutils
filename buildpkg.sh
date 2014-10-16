#!/bin/env bash 

usage(){
	echo "Usage: $(basename $0) <srpm>"
}

if [[ ! -e $1 ]] 
then
	usage
	exit 1
fi


WD=/opt

su - user1 -c "mock /opt/$1"

rsync -av /var/lib/mock/fedora-20-x86_64/result/*.rpm ${WD}/repo/

createrepo -d --update -v ${WD}/repo
