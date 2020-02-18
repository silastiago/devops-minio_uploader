#!/bin/bash

user=$1
senha=$2

expect -c "
spawn ssh -o StrictHostKeyChecking=no $user@127.0.0.1

expect \"*password: *\"
send \"$senha\r\"
expect \"*n0c*\"
send \"sudo su\r\"
expect \"*password*\"
send \"$senha\r\"
expect \"*#*\"
send \"cd /tmp/minio_uploader\r\"
send \"gunicorn --bind 0.0.0.0:5000 wsgi:app & \r\"
send \"exit \r\"
send \"exit \r\"


interact
"


