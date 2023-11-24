#!/bin/sh

root=$(pwd)

src_dir=$(dirname $1)
src_base=$(basename $1)

out_dir=$2
out_pdf="${src_base%.*}.pdf"

cd "${src_dir}"
if ! xelatex -interaction=nonstopmode "${src_base}"; then
    echo "Compilation failed"
    exit 1
fi

rm *.aux *.out *.log

cd "${root}"
mkdir -p "${out_dir}"
mv "${src_dir}/${out_pdf}" "${out_dir}/${out_pdf}"
