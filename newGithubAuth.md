## Using token instead of password for github
*password usage will expire on august. So now github wants you generate token and use that as password.
Since it is imposssible to remember token like 'asfijqwn215165165dasdsdfs' is it useful to store safely it into your pc *

##### Install keyring 
```
sudo apt-get install libsecret-1-0 libsecret-1-dev
cd /usr/share/doc/git/contrib/credential/libsecret
sudo make
git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret
```

Next time will be the last time we will use the token to authenticate...

##### Generate git token
https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token
I think that only the full repo score is necesary for commont github things (push & pull privates). Anyway scopes can be modified (but token cant be seen again)
Copy the token generated, you will see this only once
Now use that as password, and libsecret will store it on your pc, so it will be asked anymore


