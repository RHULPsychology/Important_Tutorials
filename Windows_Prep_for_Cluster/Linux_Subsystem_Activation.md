# How to Activate Linux on Windows 10 

- Click the start and type in “Turn Windows Features on/off” and hit return. it should give you this dialog. Turn ON the Windows Subsystem for Linux option. The system will ask you for a restart which should be done before proceeding further.

![Image description](https://github.com/RHULPsychology/Important_Tutorials/blob/master/Windows_Prep_for_Cluster/turn-windows-subsystem-for-linux-beta.jpg)

- After Restart, go to Microsoft App Store and install Ubuntu 18.04 LTS App:

![Image description](https://github.com/RHULPsychology/Important_Tutorials/blob/master/Windows_Prep_for_Cluster/store.png)


Once the Ubuntu App is installed, run the following commands to install the required updates

# Install aptitude:

``` bash
sudo apt-get install aptitude
```

# Update and Upgrade Ubuntu

Update
``` bash
sudo aptitude update
```
then upgrade

``` bash
sudo aptitude upgrade
```

# Install some important packages

``` bash
sudo aptitude install dc python mesa-utils gedit pulseaudio libquadmath0
```

# Informative Tutorial also available at:

https://helloacm.com/the-ubuntu-sub-system-new-bash-shell-in-windows-10/



