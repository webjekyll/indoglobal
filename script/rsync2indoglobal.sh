#!/bin/sh

# START: Tue 19 Jan 2021 16:30:20 WIB

# Copyright (C) 2021-2021 Rahmat M. Samik-Ibrahim
# http://RahmatM.Samik-Ibrahim.vLSM.org/
# This program is free script/software.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty
# of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

# JEKYLLsite: '_site' folder of Jekyll.
JEKYLLsite='/home/user/jekyll/_site/'

# PUBLIChtml: 'web directory'
PUBLIChtml='/your-public_html-home-directory-at-IndoGlobal/'

# SSHakun: Your SSH account at IndoGlobal.
SSHakun='u123456abc@hostname.idgx.net'

# RSYNC:
NICE=20
RSYNC="time nice -$NICE rsync -auvc --delete -e ssh"

$RSYNC $JEKYLLsite $SSHakun:$PUBLIChtml

exit


