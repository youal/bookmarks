#! /usr/bin/env sh


bookmarks=~/repos/youal/bookmarks/bookmarks

# lines="$(wc -l "$bookmarks" | awk '{print $1}')"
# bookmark="$(grep -Ev '^#|^$' "$bookmarks" | fzy -l "$lines" | awk '{print $1}')"
bookmark="$(grep -Ev '^#|^$' "$bookmarks" | sk | awk '{print $1}')"
[ -n "$bookmark" ] && w3m "$bookmark"
