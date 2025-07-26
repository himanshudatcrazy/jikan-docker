#!/usr/bin/env bash

# Give permission
chmod -R a+w storage/

# Start built-in PHP server
php -S 0.0.0.0:8000 -t public
