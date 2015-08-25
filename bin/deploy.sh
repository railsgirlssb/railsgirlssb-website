#!/usr/bin/env sh

rsync -avr --rsh='ssh -p22' --exclude=.git --exclude=bin --delete-after --delete-excluded ./ railsgirlssb@46.101.195.6:~/website
