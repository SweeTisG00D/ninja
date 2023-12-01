#!/bin/bash

if [ ! -d "patches" ] && [ -n "$GIT_TOKEN" ]; then
    git clone https://gngpp:$GIT_TOKEN@github.com/gngpp/ninja-patches patches
    
    for patch in patches/*.patch; do
        git apply "$patch"
    done
fi