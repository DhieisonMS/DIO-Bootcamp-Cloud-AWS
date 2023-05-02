#!/bin/bash

package=("apache2")

for pacotes2 in ${package//,/ }
do
    apt update && apt install -y $pacotes2
done