#!/usr/bin/env bash

# Find bad characters in the Markdown using ripgrep
# https://github.com/BurntSushi/ripgrep

# Any non-ASCII
rg -nP "[^\x00-\x7F]" contents

# Control/format chars (Unicode category C) or combining marks (M)
rg -nP "\p{Cf}|\p{M}" contents

# Common troublemakers: NBSP, thin/en/em spaces, zero-widths, BOM/WORD JOINER
rg -n --engine=auto "[\u{00A0}\u{2000}-\u{200D}\u{202F}\u{205F}\u{2060}\u{FEFF}]" contents
