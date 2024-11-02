#!/usr/bin/bash

cd Light
echo "Compile Light/"
./compile_styles.sh

cd ../Wasp
echo "Compile Wasp/"
./compile_styles.sh
