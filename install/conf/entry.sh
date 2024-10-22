#!/bin/bash
nginx &
su work -c '/var/www/html/engine' &