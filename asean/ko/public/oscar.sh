# Data Name: OSCAR-2201(ko)
# Data Size: ?GB
# Description: huge multilingual corpus obtained by language classification and filtering of the Common Crawl corpus using the Ungoliant architecture.

# Requirements
## 1. install git-lfs (https://docs.github.com/en/repositories/working-with-files/managing-large-files/installing-git-large-file-storage)
## 1.0 To install git-lfs in stabilityai server, follow bellow step!!
## 1.1. Download https://github.com/git-lfs/git-lfs/releases/download/v3.2.0/git-lfs-linux-amd64-v3.2.0.tar.gz then extract
## 1.2. Change the prefix in install.sh to my own home directory (e.g. prefix="/fsx/home-xxxx")
## 1.3. Run install.sh

## 2. "Sign Up" about OSCAR-2109 & OSCAR-2201 dataset to access

# 3. OSCAR-2201 dataset
### Sign Up in https://huggingface.co/datasets/oscar-corpus/OSCAR-2201 

## 3.0. clone github repository (Ask for Huggingface Username & Password)
GIT_LFS_SKIP_SMUDGE=1 git clone "https://huggingface.co/datasets/oscar-corpus/OSCAR-2201"
### If OS is Window, use command bellow not the above.
:<<END
set GIT_LFS_SKIP_SMUDGE=1
git clone "https://huggingface.co/datasets/oscar-corpus/OSCAR-2201"
END

## 3.1. change directory
cd ./OSCAR-2201

## 3.2. download data (by git-lfs) (Ask for Huggingface Username & Password)
git lfs pull --include "compressed/ko_meta/ko_meta_part_*.jsonl.gz"

## 3.3. extract data
gzip -d compressed/ko_meta/ko_meta_part_*.jsonl.gz
