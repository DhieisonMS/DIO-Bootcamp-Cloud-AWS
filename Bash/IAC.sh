#!/bin/bash

# Declare variables

Folders_Name=("teste" "teste1" teste2)
New_User=("teste1" "teste2" "test4")
New_Group=(admin viewer owner)
New_Password=teste123


# ========== Create Groups

for group in ${New_Group[@]}
do
    groupadd $group
done

# ========== Create Folders

for folder in ${Folders_Name[@]}
do
    mkdir -p /$folder
    chmod 750 /$folder
    chown root:admin /$folder
done

# ========== Create Users

for user in ${New_User[@]}
do
    useradd $user -c "$user" -s /bin/bash -m -p$(openssl passwd $New_Password) -G admin
done
