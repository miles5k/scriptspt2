#!/bin/bash


# current date + time 
timestamp=$(date +"%Y-%m-%d_%H-%M-$S")

#user info that gets saved to log

echo "Snapshot taken at $timestamp" >> /home/miles/user_snapshot.log

echo "users list at $timestamp:" >> /home/miles/user_snapshot.log

echo "$(cat /etc/passwd)" >> /home/miles/user_snapshot.log


echo "" >> /home/miles/user_snapshot.log



