#!/usr/bin/env bash

DMBROWSER="floorp"

declare -a options=(
"amazon - https://www.amazon.com/s?k="
"archaur - https://aur.archlinux.org/packages/?O=0&K="
"archwiki - https://wiki.archlinux.org/index.php?search="
"debianpkg - https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords="
"discogs - https://www.discogs.com/search/?&type=all&q="
"duckduckgo - https://duckduckgo.com/?q="
"ebay - https://www.ebay.com/sch/i.html?&_nkw="
"github - https://github.com/search?q="
"gitlab - https://gitlab.com/search?search="
"google - https://www.google.com/search?q="
"imdb - https://www.imdb.com/find?q="
"reddit - https://www.reddit.com/search/?q="
"slashdot - https://slashdot.org/index2.pl?fhfilter="
"socialblade - https://socialblade.com/youtube/user/"
"sourceforge - https://sourceforge.net/directory/?q="
"stack - https://stackoverflow.com/search?q="
"startpage - https://www.startpage.com/do/dsearch?query="
"stockquote - https://finance.yahoo.com/quote/"
"thesaurus - https://www.thesaurus.com/misspelling?term="
"translate - https://translate.google.com/?sl=auto&tl=en&text="
"urban - https://www.urbandictionary.com/define.php?term="
"wayback - https://web.archive.org/web/*/"
"webster - https://www.merriam-webster.com/dictionary/"
"wikipedia - https://en.wikipedia.org/wiki/"
"wiktionary - https://en.wiktionary.org/wiki/"
"wolfram - https://www.wolframalpha.com/input/?i="
"youtube - https://www.youtube.com/search?q="
"nixpkgs - https://search.nixos.org/packages?channel=unstable&query="
"quit"
)

while [ -z "$engine" ]; do
enginelist=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p 'Choose search engine:')
engineurl=$(echo "$enginelist" | awk '{print $NF}')
engine=$(echo "$enginelist" | awk '{print $1}')
# Check if quit was selected
if [[ "$engine" == "quit" ]]; then
    exit 0
fi
done

# Searching the chosen engine.
while [ -z "$query" ]; do
query=$(echo "$engine" | rofi -dmenu -p 'Enter search query:')
done

# Display search results in web browser
$DMBROWSER "$engineurl""$query"

