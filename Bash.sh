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
find /var/log -iane *.log -printf "%f %i\n"

grep -E extended grep
egrep
grep - n 
grep -v equals inverted search
cat fake1passwd.txt | grep /bin/bash
# bas h printf oheonixmap.com
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
