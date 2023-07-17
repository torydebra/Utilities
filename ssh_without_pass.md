# Store ssk key in a secure way and not input pass anymore when ssh to a server

Follow answer here https://serverfault.com/questions/241588/how-to-automate-ssh-login-with-password to ssh to embedded without asking for password again :  

   Don't use a password. Generate a passphraseless SSH key and push it to your VM.

   If you already have an SSH key, you can skip this step… Just hit Enter for the key and both passphrases:
   ```
   $ ssh-keygen -t rsa -b 2048
   Generating public/private rsa key pair.
   Enter file in which to save the key (/home/username/.ssh/id_rsa): 
   Enter passphrase (empty for no passphrase): 
   Enter same passphrase again: 
   Your identification has been saved in /home/username/.ssh/id_rsa.
   Your public key has been saved in /home/username/.ssh/id_rsa.pub.
   ```
   Copy your keys to the target server:
   ```
   $ ssh-copy-id id@server
   id@server's password: 
   ```
   Now try logging into the machine, with ssh 'id@server', and check in:
   ```
   .ssh/authorized_keys
   ```
   to make sure we haven’t added extra keys that you weren’t expecting.

   Finally check logging in…
   ```
   $ ssh id@server
   id@server:~$ 
   ```
   You may also want to look into using ssh-agent if you want to try keeping your keys protected with a passphrase.


### To use roslaunch with machine tag (ROS1)

**Note that it seems the output of the remote launched nodes is not printed on local terminal**.  

Normal ssh key (as done above) is not ok with roslaunch, see here https://answers.ros.org/question/41446/a-is-not-in-your-ssh-known_hosts-file/

So:
- remove the key https://serverfault.com/questions/29262/how-to-manage-my-ssh-known-hosts-file
- generate new key which is good for roslaunch : `ssh -oHostKeyAlgorithms='ssh-rsa' <username>@<servername>.local`

Now roslaunch should work well
