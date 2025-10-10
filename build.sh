#!/usr/bin/env bash

OUT="a_book_about_making_books.pdf"

mapfile -t FILES < <(
  sed -E 's/[[:space:]]*#.*$//' contents/manifest.txt |   # drop inline + full-line comments
  sed -E '/^[[:space:]]*$/d'                              # drop blank lines
)

# Create debug file
pandoc --metadata-file=metadata.yaml \
  --from=markdown --to=latex \
  --top-level-division=chapter \
  -o _debug.tex "${FILES[@]}"

pandoc \
  --metadata-file=metadata.yaml \
  --resource-path=contents \
  --from=markdown \
  --to=pdf \
  --pdf-engine=xelatex \
  --highlight-style=monochrome \
  -o "$OUT" \
  --toc --table-of-contents --toc-depth=1 \
  --top-level-division=chapter \
  -V documentclass=book \
  -V classoption=openany \
  "${FILES[@]}"

ls -lh $OUT

pdfinfo ${OUT} | grep Pages

