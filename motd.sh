#!/bin/sh

#clear motd
truncate -s 0 /etc/motd

#pipe output of command to /etc/motd
neofetch >> /etc/motd