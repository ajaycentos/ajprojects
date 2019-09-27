#!/bin/bash


# no of containers
count=2

rm -f /tmp/hosts.txt

for i in `seq 1 $count`
do
	lxc launch images:centos/7 node$i --profile 512mb
	sleep 15
	cat lxc_root.sh |lxc exec node$i bash
	echo "hostnamectl set-hostname node$i.ajay.lan"|lxc exec node$i bash
	ips=`lxc info node$i|grep eth0|grep -w inet|cut -f3`
	echo $ips
	sshpass -p 'q1w2e3/' scp -r ~/.ssh root@$ips:/root/
        echo "$ips node$i.ajay.lan node$i" >> /tmp/hosts.txt	
done

for i in `seq 1 $count`
do
	ips=`lxc info node$i|grep eth0|grep -w inet|cut -f3`
	scp /tmp/hosts.txt root@$ips:/etc/hosts
done
