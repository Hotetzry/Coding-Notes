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


#CUT
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
#AWK
awk -F: '{print$1}' will print field one with a delimter of :
using AWK '{print $NF}' will print the last field of every line
awk -F: 'BEGIN {OFS=":"} {print $1, $3}' fake1passwd
{print $0} dispaly all string type data that matches
cat /etc/passwd | awk -F: '($3 >= 150){print $0}' will print out every field 3 item that is greater than 150

#SORT
sort -n = sort numerically 1-10
sort -nr = numerically reversed 10-1
cannot use sort on its own, needs command or argument before it
ex: cat fake1passwd.txt | sort -k 7
| sort -t : sorts on delimeter
sort -u sorts unique
sort -t : -k 1 | uniq

#REGEX 
regex101 grep -e or egrep

alias variable = variable 

#SED 
stream editor utility 
-g global = all of them
no g will only repace one instance
sed -e 's/chicken/hamburger/g' -e s/pepperoni/sausage/' pizza.txt
chicekn chicken
hamburger hamburger 
pepperoni
sausage^
sed -e /chicken/d delete the whole line

A=$(ind usr bin 0name passwrww=d=a)
commandsub

tar -czf = compresses file

find [data] -exec [command] {} \; = each found result command is executed
find [data] - exec [command] {} + = for each result command is only ran once




#5 using only the ls -l and cut Commands, write a BASH script that shows all filenames with extensions ie: 1.txt, etc., but no directories, in $HOME/CUT.
ls -l $HOME/CUT | cut -d: -f2 | cut -d" " -f2 | cut -d. -f1-2 -s > $HOME/CUT/names

#6 Write a basic bash script that greps ONLY the IP addresses in the text file provided (named StoryHiddenIPs in the current directory); sort them uniquely by number of times they appear.
cat StoryHiddenIPs | grep -E -o '([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})' | sort -n | uniq -c | sort -nr

#7 Using ONLY the awk command, write a BASH one-liner script that extracts ONLY the names of all the system and user accounts that are not UIDs 0-3.
Only display those that use /bin/bash as their default shell, The input file is named $HOME/passwd and is located in the current directory. Output the results to a file called $HOME/SED/names.txt
cat $HOME/passwd | awk -F: '($3>3)' | awk -F: '($7 == "/bin/bash"){print $1}' > $HOME/SED/names.txt

#8 Find all dmesg kernel messages that contain CPU or BIOS (uppercase) in the string, but not usable or reserved (case-insensitive) Print only the msg itself, omitting the bracketed numerical expressions ie: [1.132775]
dmesg | grep -E 'CPU|BIOS' | cut -d] -f2- | grep -v -E 'usable|reserved'

#9 Write a Bash script using "Command Substitution" to replace all passwords, using openssl, from the file $HOME/PASS/shadow.txt with the MD5 encrypted password: Password1234, with salt: bad4u Output of this command should go to the screen/standard output. You are not limited to a particular command, however you must use openssl. Type man openssl passwd for more information.
a=$(openssl passwd -1 -salt bad4u Password1234) 
awk -F: -v "awk_var=$a" 'BEGIN {OFS=":"} {$2=awk_var} {print $0}' $HOME/PASS/shadow.txt

#10 Using ONLY sed, write all lines from $HOME/passwd into $HOME/PASS/passwd.txt that do not end with either /bin/sh or /bin/false.
sed -e '/\/bin\/sh/d' -e '/\/bin\/false/d' $HOME/passwd > $HOME/PASS/passwd.txt




