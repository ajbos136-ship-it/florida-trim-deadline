#!/bin/sh
# Notify IndexNow participants that a URL on this site is new or changed.
#
# IndexNow is an open protocol (indexnow.org). Ownership is proven by a key file
# at the site root, so there is no account and no registration. This exists
# because the guide page is otherwise an orphan: nothing links to it but its own
# public repo, and there is no Search Console here to request indexing with.
#
# Re-run it whenever the page's content actually changes. Do not re-run it on a
# schedule for a page that has not changed; that is spam, and the protocol's
# participants treat it as such.
set -e
KEY="$(basename "$(ls "$(dirname "$0")"/*.txt | grep -v robots | head -1)" .txt)"
HOST="ajbos136-ship-it.github.io"
URL="https://$HOST/florida-trim-deadline/"
echo "key      : $KEY"
echo "keyfile  : https://$HOST/florida-trim-deadline/$KEY.txt"
echo "url      : $URL"
curl -sS -o /dev/null -w "IndexNow responded: %{http_code}\n" \
  "https://api.indexnow.org/indexnow?url=$URL&key=$KEY&keyLocation=https://$HOST/florida-trim-deadline/$KEY.txt"
echo "200 or 202 means accepted. 403 means the key file was not readable yet."
