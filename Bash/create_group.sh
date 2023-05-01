#!/bin/bash

New_Group=(admin viewer owner)

for group in ${New_Group[@]}
do
    groupadd $group
done