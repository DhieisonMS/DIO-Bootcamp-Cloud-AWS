#!/bin/bash

New_User=("teste1" "teste2" "test4")
New_Password=teste123

for user in ${New_User[@]}
do
    useradd $user -c "$user" -s /bin/bash -m -p$(openssl passwd $New_Password)
done