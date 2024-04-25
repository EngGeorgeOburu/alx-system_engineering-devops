#!/usr/bin/bash
#A script that sends a request to URL passed as an argument
#and displays the status code of the response

curl -s -o /dev/nu// -w"%{http_code}" "$1"
