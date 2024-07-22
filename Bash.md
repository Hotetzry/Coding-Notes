 #LESS ss64.com for help.
 Pg Down; spacebar; CTRL+V; CTRL+F 	moves down one screen length
 Pg Up; CTRL+B 				move back up one screen length
 Down Arrow; ENTER; CTRL+N 		moves down one line at a time
 Up Arrow; CTRL+Y 			moves up one line at a time
 /pattern 				searches FWD for pattern ie: /logs
 ?pattern 				searches BACK for pattern ie: ?logs
 / 					repeats previous search
 q 					quit less
 man less 				for more options
 ...

 ...

 #TOUCH
 Touch - empty file
 touch -t allows for time manipulation
#
MKDIR -p makes a parent directory
umask check files permissions
chmod 777 all files and scripts in training env
#
*ls -1* important for test 1 = 1 per line
#
#Find
find -size 
find -group name 
find -gid
 find - maxdepth deep dive into directoy
find / -type d
find -name \*.txtfind a time -C]\,FOIND
# find - exec

#print -f
inode.number to files
find /var/log -iname *.log2>dev/null -printf "%i %f\n"

grep -E extended grep
egrep
grep - n 
grep -v equals inverted search
cat fake1passwd.txt | grep /bin/bash
# bash printf oheonixmap.com
# 
single versus double brackets
* single brackets baeldung.com
# if its asking for only files
find $HOME/1123 -type f -name *.txt | grep -v "~"
# finding all files ending with .txt
find . -name "*.txt"
# touching files with endings using brace expansion .txt
touch $HOME/1123/{1,2,3,4,5,6~,7~,8~,9~}.txt
# brace expansion
mkdir $HOME/11{23,34,45,56}


#Cut 
cut "file" | cut -d: -f1(-) prints out all
                 variable field 1
cut ... -s (strict) only asking for delimeter
&& , || , ! , &, |
##
```
Using ONLY the find command, find all files on the system with inode 4026532575 and print only the filename to the screen, not the absolute path to the file, separating each filename with a newline. Ensure unneeded output is not visible.
#find / -inum 4026532575 2>/dev/null -printf "%f\n"
```
```
Using ONLY the find command, find all empty files/directories in directory /var and print out ONLY the filename (not absolute path), and the inode number, separated by newlines.
#find /var -empty -printf "%i %f\n"
```
```
Copy all files in the $HOME/1123 directory, that end in ".txt", and omit files containing a tilde "~" character, to directory $HOME/CUT.
Use only the find and cp commands. You will need to utilize the -exec option on find to accomplish this activity.
The find command uses BOOLEAN "!" to designate that it does not want to find any files or directories that follows.
find $HOME/1123 -type f -name "*.txt" -and ! -name "*~*" -exec cp {} $HOME/CUT \;
```



```
    Using only the ls -l and cut Commands, write a BASH script that shows all filenames with extensions ie: 1.txt, etc., but no directories, in $HOME/CUT.
    Write those to a text file called names in $HOME/CUT directory.
    Omit the names filename from your output.







ls -l $HOME/CUT | cut -d: -f2 | cut -d" " -f2 | cut -d. -f1-2 -s > $HOME/CUT/names
```
