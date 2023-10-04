#!/bin/bash
echo hello
read -ep "hello? " -i "-hello?" "hello"
echo "$hello"
