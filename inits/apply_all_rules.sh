#!/bin/sh

file_dir="$(cd -- "`dirname -- "$0"`" && pwd)"
rules_dir="$(cd -- "${file_dir}/../rules" && pwd)"

for i in `ls ${rules_dir} | grep \.el$`
do
    ln -si ${rules_dir}/$i ${file_dir}/$i
done
