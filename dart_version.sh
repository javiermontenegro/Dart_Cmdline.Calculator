#!/bin/sh
dart --version
if [ $? != 0 ]; then
       echo "Dart is not installed!"
fi
pub --version
if [ $? != 0 ]; then
        echo "For pub utility install Dart!"
fi