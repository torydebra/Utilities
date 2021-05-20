### To look in the history commands partially written

In the file `/etc/inputrc`, look for these lines:

```sh
# mappings for "page up" and "page down" to step to the beginning/end
# of the history
# "\e[5~": beginning-of-history
# "\e[6~": end-of-history

# alternate mappings for "page up" and "page down" to search the history
"\e[5~": history-search-backward
"\e[6~": history-search-forward
```

comment the first pair, uncomment the second one, as above
