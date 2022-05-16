#!/usr/bin/env zsh

rm -rf .svace-dir
ant clean

svace init

cp warn-settings.txt .svace-dir/warn-settings.txt
cp settings.txt .svace-dir/settings.txt

svace build --enable-rebuild ant compile
svace analyze --server
