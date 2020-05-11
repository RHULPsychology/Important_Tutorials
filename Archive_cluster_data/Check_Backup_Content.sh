#!/bin/bash


### This script takes 2 inputs: and   

 # 1. The absolute path of the Original Folder that was backed up. 
 # 2. The absolute path of the Back-Up tarball file created.
 
### Get the input arguments into variables:

path_to_original_folder=$1
path_to_tar_ball=$2

tmp_dir=$(mktemp -d -t backup-test-XXXXXXXXXX)

Backup_Report_dir=$(mktemp -d -t Backup_Report-XXXXXXXXXX)
echo "the Backup_Report directory is: " $Backup_Report_dir

### Uncompress the tarball into temp folder

echo "Uncompressing the Backup Archive: " $path_to_tar_ball
cd $tmp_dir
tar xvzf $path_to_tar_ball

echo "Creating Backup Reports (md5sums) in folder : " $Backup_Report_dir
find $tmp_dir -type f -exec md5sum {} + | sort -k 2 >> $Backup_Report_dir/Uncompressed_md5sums.txt
find $path_to_original_folder -type f -exec md5sum {} + | sort -k 2 >> $Backup_Report_dir/Original_md5sums.txt

echo "Checking for differences, saved in : " $Backup_Report_dir/Differences.txt
diff <(find $tmp_dir -type f -exec md5sum {} + | sort -k 2 | sed 's/ .*\// /') \\
     <(find /MRIWork/MRI-Scratch/Sample_BIDS_Dataset/ -type f -exec md5sum {} + | sort -k 2 | sed 's/ .*\// /') \\
     >> $Backup_Report_dir/Differences.txt

echo "Removing uncompressed directory: " $tmp_dir

rm -rf $tmp_dir
