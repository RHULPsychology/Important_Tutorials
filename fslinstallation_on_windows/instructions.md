# System Requirements

    - Windows 10 ( WSL ).
    - Dual core CPU (recommended minmum)
    - 4GB RAM minimum (8GB+ recommended)
    - Minimum 10GB, up to 75GB, of free disc space (VM image expands as necessary up to the 75GB limit, if used)
    
# Download Installer

  - https://fsl.fmrib.ox.ac.uk/fsldownloads_registration
  
# run downloaded script in Ubuntu shell via

 - python /mnt/c/Users/<WindowsUserName>/Downloads/fslinstaller.py

   Say yes to all default install options

# In ubuntu shell add

```bash
 echo "export DISPLAY=localhost:0.0" >> ~/.bashrc
```
- try running fslmaths, fsl, fsleyes. If fsleyes doesn't start, with a message referring to: libgtk-x11-2.0.so.0, then you will need to run:

```bash
sudo apt-get install libgtk2.0-0
```

- If fslmaths doesn't start, with a message referring to: libquadmath.so.0, then you will need to run (in case you didn't install it earlier):

```bash
 sudo apt-get install libquadmath0
```
- It might be worth trying

 ```bash
 sudo apt-get install firefox
 ```
