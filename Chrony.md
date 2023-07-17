# Chrony
To syncro two local pc

## Fast Setup
- Both on **Server** (machine to take time from) and client(s) (machine(s) that must take the time from the server)   
  ``` sudo apt install chrony ```  
  _(on my ubuntu 18_ `chronyc (chrony) version 3.2 (+READLINE +IPV6 -DEBUG)` _is installed) _  
  **Note** you can not have both `chrony` and `ntp` installed. When you install one, the other will be removed

- On the **Server**, in `/etc/chrony/chrony.conf` file add:
  ```sh
  # make it serve time even if it is not synced (as it can't reach out)
  local stratum 8
  # allow the IP of your peer to connect
  allow <IP of your time-client>
  ```
  _TODO_ : Understand what `local stratum 8` is 

- On the **Client**, in `/etc/chrony/chrony.conf` file add:
  ```sh
  server <server_ip> minpoll 0 maxpoll 5 maxdelay .05
  ```
  and restart chrony:
  ```bash
  sudo /etc/init.d/chrony restart
  ```

## Monitoring
- On the Server, you can check which clients are attached with:
  ```bash
  sudo chronyc clients
  ```

- On the **client**, to check the offset, you can use:
  - `chronyc sourcestats -v`
  - `ntpdate -q <IP of your time server>`

## Setup details
On the chrony manual there are the explanations for the server options to be put in the client configuration.
As in the [faq](https://chrony.tuxfamily.org/faq.html#_how_can_i_improve_the_accuracy_of_the_system_clock_with_ntp_sources):
- > Default values of poll can be lowered when using your own server. 
- > Generally, if the sourcestats command usually reports a small number of samples retained for a source (e.g. fewer than 16), a shorter polling interval should be considered. If the number of samples is usually at the maximum of 64, a longer polling interval might work better.  

I am trying with:  
```server 10.240.23.54 minpoll 0 maxpoll 2 polltarget 30 maxdelaydevratio 2 maxdelay .05 xleave```


***
### References
Fast setup:
https://answers.ros.org/question/298821/tf-timeout-with-multiple-machines/

chrony commands explains:
https://ubuntu.com/blog/ubuntu-bionic-using-chrony-to-configure-ntp

crhony man (on my ubuntu 18 `chronyc (chrony) version 3.2 (+READLINE +IPV6 -DEBUG)` is installed)
https://chrony.tuxfamily.org/documentation.html

Notes on [issue #67](https://github.com/ADVRHumanoids/TelePhysicalOperation/issues/67)


# NTP
alternative of chrony

- `sudo gedit /etc/ntp.conf` where there are the lines `pool 0.ubuntu.pool.ntp.org iburst` ... add   
   `server <server_ip_to_syncro_with> prefer`.
  I am not sure if all the `pool ...` should be commented (and then decommented when using normally the pc.
- `sudo service ntp restart`
- `ntpq -p` or `ntpq -pn` to check for status

### ??
not sure, but following this https://www.cyberciti.biz/faq/linux-unix-bsd-is-ntp-client-working/ it says something also about `timedatectl status` 
