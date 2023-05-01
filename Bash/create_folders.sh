#!/bin/bash

Folders_Name=("teste" "teste1" teste2)

for folder in ${Folders_Name[@]}
do
    mkdir -p /$folder
done