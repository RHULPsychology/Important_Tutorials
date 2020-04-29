# Understanding the folder structure

- The archive space is located at /MRIArchive. It' folder structure has been organized similarly to the /MRIWork space.

  For example:

  The data in folder ```/MRIWork/MRIWork10/pv/giusi_pollicina/Old/``` should be compressed and archived in ```/MRIArchive/MRIWork10/pv/giusi_pollicina/Old.tar.gz``` location as a compressed tarball gzip file. Individuals will have writing permissions to their respective archive folders.



# How to compress the data and archive it

- Use the ```tar cvf``` and ```gzip -9``` commands to achieve highest compression. 

  For example:

  ```bash
      tar cvf - /MRIWork/MRIWork10/pv/giusi_pollicina/Old/ | gzip -9 -> /MRIArchive/MRIWork10/pv/giusi_pollicina/Old.tar.gz
  ```

# Uncompress to check if the backup has worked 

- Move to the temp folder and create a uncompressed folder

```bash
    mkdir -p /tmp/Trail_uncompressed/; cd /tmp/Trail_uncompressed/; 
```
- Then uncompress the gzipped tarball backup.

```bash
    tar xvzf /MRIArchive/MRIWork10/pv/giusi_pollicina/Old.tar.gz
```

- check the subfolders in ```/tmp/Trail_uncompressed/``` with the ```ls -lla /tmp/Trail_uncompressed/``` command to see if you have successfully retrieved your backed up data.


# Delete the uncompressed folder

Once you have checked the output, remove the uncomressed folder

```bash
    rm -r /tmp/Trail_uncompressed/`
```
Use ```rm -rf``` if you have to force delete it.

# Delete the original folder

- Please do not forget to remove your original folder. It would not work if you delete it from the GUI, it will just go and sit in the Trash. Use ```rm -r``` command for the removal of the directory. Be careful, this above process is non-reversible. Please double check if you have got the backup file properly. One simple way to do this is to check the size of the backup file with the `du` command. 

For example:

```bash
    du -sh /MRIArchive/MRIWork10/pv/giusi_pollicina/Old.tar.gz

```

Once you are confident remove the folder like:

```bash
    rm -r /MRIWork/MRIWork10/pv/giusi_pollicina/Old/
```
