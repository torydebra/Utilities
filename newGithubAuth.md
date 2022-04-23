## Using token instead of password for github
*password usage will expire on august. So now github wants you generate token and use that as password.
Since it is imposssible to remember token like 'asfijqwn215165165dasdsdfs' is it useful to store safely it into your pc*


##### Generate git token
https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token
I think that only the full repo score is necesary for commont github things (push & pull privates). Anyway scopes can be modified (but token cant be seen again)
Copy the token generated, you will see this only once
Now use that as password, and libsecret will store it on your pc, so it will be asked anymore

##### Install keyring 
```
sudo apt-get install libsecret-1-0 libsecret-1-dev
cd /usr/share/doc/git/contrib/credential/libsecret
sudo make
git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret
```

now **Use the new token created as described above as password**
Next time will be the last time we will use the token to authenticate...

### Reset stored password
1. Install Seahorse (https://wiki.gnome.org/Apps/Seahorse)
2. Use it, it is a GUI 

### SSH locked keyring problem
I had some problem when running the procedure for store the token when doing from a remote ssh (like on the raspberry)

Problem was:
```
** (process:1642): CRITICAL **: 10:57:46.780: store failed: Cannot create an item in a locked collection
```

I solved with: 
```
ssh -X <host>
dbus-run-session bash
gnome-keyring-daemon -r
```
it will ask for user password, and then the token will be stored

**NOTE** To use again the stored password, all the commands above must be used every time :C


