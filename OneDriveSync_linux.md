# OneDrive Sync with Linux

## Install 
https://github.com/abraunegg/onedrive/blob/master/docs/INSTALL.md

## Activate
`onedrive`
To activate, when URI is requested, after login white browser page may arise. Simply copy and paste the URL at the top into the terminal, it is this one that it wants
  
## Configuration
full istructions:  https://github.com/abraunegg/onedrive/blob/master/docs/USAGE.md  

My setup has two files in `~/.config/onedrive`:

### `sync_list`
The **remote** folders that we want to monitor.   
Note that also root folder will be downloaded, I do not know if we can remove them
~~~
# sync_list supports comments
#
# The ordering of entries is highly recommended - exclusions before inclusions
phd/phdpapers/
~~~

### `config`
The **local** folder we want to monitor

**Home:**
~~~
sync_dir="/media/tori/3DC720B2465BC0FF/BOOKS/phdpapers/"
~~~
**IIT**
~~~
TODO
~~~

## Usage 
full istructions:  https://github.com/abraunegg/onedrive/blob/master/docs/USAGE.md  

To "fake" sync (see what would happen)
~~~
onedrive --synchronize --verbose --dry-run 
~~~

To sync:
~~~
onedrive --synchronize
~~~

To sync if config files are changed:
~~~
onedrive --synchronize --verbose --resync
~~~


## Notes
Is it possible to set different local folder to sincro with specific remote folders? Who knows
