#!/bin/bash
sudo monit -g workers stop; sleep 10s; sudo kill -9 $(ps aux | grep [w]orker_ | awk -F ' ' '{print $2}'); sudo monit -g workers start
