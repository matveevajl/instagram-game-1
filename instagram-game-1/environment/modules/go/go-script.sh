#!/bin/bash

rm -f /application/src/insta1/app

cd /application/src/insta1

go build

ls -ltr

./insta1-go-app
