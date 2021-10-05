#!/bin/bash

users=$(who | grep $1)
for user in $users
do
    if test $user = $1
    then echo $user is logged in
    fi
done