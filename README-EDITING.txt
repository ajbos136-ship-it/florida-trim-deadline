THE GUIDE PAGE LIVES HERE AND NOWHERE ELSE.

index.html in this directory IS the published page. Edit it here, commit, push.
GitHub Pages serves this repo directly.

There was briefly a second copy at ../guide/index.html that was edited and then
copied here. It was deleted on 2026-08-20 because two copies of one file is a
trap: eventually somebody edits the one that is not published, verifies their
change locally, and ships nothing.

After changing the content, and ONLY after the content actually changed:

    ./submit-indexnow.sh

That notifies IndexNow participants (Bing, Yandex, Seznam, Naver) that the page
changed. Ownership is proven by the key file in this directory, not by an
account. Do not run it on a schedule for an unchanged page; that is spam and the
participants treat it that way. Google does not participate in IndexNow.

Teardown, if this ever comes down:
    gh repo delete ajbos136-ship-it/florida-trim-deadline --yes
and set base back to PENDING in ~/Documents/BosTech/tools/site.json so no
outreach sequence keeps a dead link.
