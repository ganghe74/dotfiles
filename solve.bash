#!/bin/bash

if [[ $# == 0 ]]
then
    echo no input file
    exit 1
fi

if ! options=$(getopt -o r -- "$@")
then
    exit 1
fi

eval set -- "$options"

while true; do
    case "$1" in
        -r)
            echo runtime mode
            RUNTIME=1
            shift ;;
        --)
            shift
            break ;;
    esac
done

echo Run $1

if [[ $1 == *.cpp ]]
then
    g++ "$1" -o run -std=gnu++17
elif [[ $1 == *.py ]]
then
    echo '#!/usr/bin/python3' > run
    cat "$1" >> run
else
    echo "not supported file."
    exit 1
fi

if [[ $? != 0 ]]
then
    exit 1
fi

if [[ RUNTIME -eq 1 ]]
then
    ./run
    exit $?
fi

echo =====input=====
echo "$(cat input.txt)"

ts=$(date +%s%N)
./run < input.txt > output.txt

if [[ $? != 0 ]]
then
    echo "Runtime Error!"
    exit 1
fi

tt=$((($(date +%s%N) - $ts)/1000000))

echo =====output====
echo "$(cat output.txt)"
echo "Time taken: $tt milliseconds"
