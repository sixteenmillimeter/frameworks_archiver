# FRAMEWORKS archiver

FRAMEWORKS listserv archive script. Downloads all txt.gz copies of the FRAMEWORKS listserv from https://mailman-mail5.webfaction.com/pipermail/frameworks/. Could only find [2006-2011](http://www.hi-beam.net/fw/index.html) and [2002-2011](https://archive.org/details/archiveteam-listserv-aol-2011-11).

Still looking for 1996-2002.

To run this script you need [pup](https://github.com/ericchiang/pup) installed. It also uses curl and grep.

Working on an awk command to replace pup.

Start the archive process in 3 commands:

```bash
git clone https://github.com/sixteenmillimeter/frameworks_archiver.git
cd frameworks_archive
sh archive.sh
```
