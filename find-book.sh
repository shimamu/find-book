#!/bin/bash

# set directory to search.
dirs=(
    /media/shimamu/RAID/bookshelf
    /media/shimamu/HD-ADU31/bookshelf
)

find_manga_by() {
    key=$1
    find ${dirs[@]} -type d -regex ".*${key}.*"
}

if [ $# -ne 0 ]; then
    find_manga_by $1
fi

