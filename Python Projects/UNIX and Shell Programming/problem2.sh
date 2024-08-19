#!/bin/bash
# Below is the script to navigate and perform tasks in the home directory



# To go your home directory, we simply input cd ~

cd ~


# To display the name of your home directory, we can use pwd, works with echo as well

echo "Your Home directory is: $(pwd)"


# To create a subdirectory APCV320, we can use mkdir, which simply translates to  "make directory'

mkdir APCV320


# Lastly, to list the contents of the working directory - even hidden files - we can present it this way

echo "Contents of the current directory:"

ls -a
