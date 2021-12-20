#!/usr/bin/env bash

lang=`ibus engine`

if [ $lang = "xkb:us::eng" ]; then
    ibus engine chewing
fi

if [ $lang = "chewing" ]; then
    ibus engine xkb:us::eng
fi
