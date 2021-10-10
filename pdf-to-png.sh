#!/usr/bin/env bash
pdf=$1
png=$2

(gs -dSAFER -r600 -sDEVICE=png256 -o $png $pdf && convert $png -background white -alpha remove -alpha off $png)


