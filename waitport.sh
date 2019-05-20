#!/bin/bash

PORT=$1
echo "Waiting for port $PORT"
while ! nc -z localhost $PORT; do
  sleep 0.1
  echo -n .
done
echo "Port $PORT open"