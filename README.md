# Folders.ps1

## About

This is a script that solves 1 specific problem.

The problem being where you have multiple files that have the same name but different extensions and you want to consolidate these files into a folder with the same name.

For example, I have 3 files that are books and named like so:

1. someBook.pdf
2. someBook.mobi
3. someBook.epub

and I want to combine all these files into a directory named `someBook`

## Usage

This script must be in the same directory that contains all the files with multiple same named files.
It must be run like so:

```cmd
.\folders.ps1
```
Note: it will create folders for all files not already in folders and move your files into that folder.
