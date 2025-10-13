#!/usr/bin/env bash

# Normalize: collapse any final blank-line run to exactly one newline
perl -0777 -pe 's/\n+\z/\n/' -i contents//zzzz-appendices/00-appendix-title.md

