#!/bin/bash

bg=$(jq -r '.special.background' ~/.cache/wal/colors.json)
fg=$(jq -r '.special.foreground' ~/.cache/wal/colors.json)
border=$(jq -r '.colors.color5' ~/.cache/wal/colors.json)

cat > ~/.config/mako/config <<EOF
font=JetBrains Mono 10
padding=10
margin=10
border-size=2
default-timeout=5000
max-visible=5
background-color=$bg
text-color=$fg
border-color=$border
EOF

pkill mako && mako &
