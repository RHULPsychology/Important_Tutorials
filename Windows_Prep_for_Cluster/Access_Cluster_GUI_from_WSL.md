# Letting Ubuntu bash on Windows 10 run 'ssh -X'  to get a GUI environment on a remote server

- First

Install all the following. On Window, install `Xming`. On Ubuntu bash, use `sudo apt install` to install `ssh xauth xorg`.

``` bash
sudo aptitude install ssh xauth xorg
```

- Second

Edit `ssh_config` as administrator(USE `sudo`). 

``` bash
sudo nano /etc/ssh/ssh_config
```

Inside `ssh_config`, remove the hash `#` in the lines `ForwardAgent`, `ForwardX11`, `ForwardX11Trusted`, and set the corresponding arguments to `yes`.

``` bash
# /etc/ssh/ssh_config

Host *
    ForwardAgent yes
    ForwardX11 yes
    ForwardX11Trusted yes
```

- Third

In `ssh_config` file, remove the front hash `#` before `Port 22` and `Protocol 2`, and also append a new line at the end of the file to state the xauth file location, `XauthLocaion /usr/bin/xauth`, remember write your own path of xauth file.

``` bash
# /etc/ssh/ssh_config

#   IdentifyFile ...
    Port 22
    Protocol 2
#   Cipher 3des
#   ...
#   ...
    ...
    ...
    GSSAPIDelegateCredentials no
    XauthLocaion /usr/bin/xauth
```

- Fourth

Now since we are done editing `ssh_config` file, save it when we leave the editor. Now go to folder `~` or `$HOME`, append `export DISPLAY=localhost:0` to your `.bashrc` file and save it.

``` bash
# ~/.bashrc
...
...
export DISPLAY=localhost:0
```

- Last

We are almost done. Restart your bash shell, open your `Xming` program and use `ssh -X yourusername@yourhost`. Then enjoy the GUI environment.

``` bash
ssh -X yourusername@yourhost
```
