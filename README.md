# FRAMEWORKS archiver

FRAMEWORKS listserv archive script. Downloads all txt.gz copies of the FRAMEWORKS listserv from https://mailman-mail5.webfaction.com/pipermail/frameworks/. Could only find [2006-2011](http://www.hi-beam.net/fw/index.html) and [2002-2011](https://archive.org/details/archiveteam-listserv-aol-2011-11).

Still looking for 1996-2002.

This script uses `curl`, `grep`, `cut` and `awk`.

Start the archive process in 3 commands:

```bash
git clone https://github.com/sixteenmillimeter/frameworks_archiver.git
cd frameworks_archiver
bash archive.sh
```

Delete the "links.txt" file in any of the directories to have the script regenerate.