#!/bin/bash
ssh oracle@192.168.180.129 "hostname; ip a |grep gl; mkdir -p /home/oracle/test-jenkins; /home/oracle/create-user; echo yum list installed >> paquetes.txt"
