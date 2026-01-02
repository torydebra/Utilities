I am using rdiff-backup https://rdiff-backup.net/

- backup:
```
rdiff-backup /media/tori/3DC720B2465BC0FF/ /media/tori/Seagate\ Basic/DATA
```

- One simple measure can be to call `df -h  /media/tori/Seagate\ Basic` at the end of each backup and keep an eye on space left.

- Delete old incremental:

- FAQ: https://github.com/rdiff-backup/rdiff-backup/blob/master/docs/FAQ.adoc#10-what-do-the-various-fields-mean-in-the-session-statistics-and-directory-statistics-files
