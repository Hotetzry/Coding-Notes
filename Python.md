# Python Notes
## SSH Command
`ssh student@10.x.x.x -X`
## For Loop
This is a for loop example
"Print each fruit in a fruit list"
```

fruits = ["apple", "banana", "cherry"]
for x in fruits:
 print(x)
 
 ```



# Linux IP 
10.50.27.229

# Windows IP
10.50.40.76

windows 10/11 operating system

 config.ovpn (config file)
 
 openVPN-X.X.X-XXXX-amd64.msi (installer version recommended here)
 
 CYBBH DAY0 Setup for vpn and refresher notes

vim $HOME/.vimrc
# syntax enable
# set tabstop=4
# set shiftwidth=4
# set expandtab
# set number
# filetype indent on
# set autoindent

# Type Casting: str(), float(), int(), bool()
  basic functions print(), type() split join

  # Zero index position [] done in brackets starts at 0
  -1 last letter
  () tuple = takes up less headspace/ resrouces and cant be changed later
  [] list
  del letters [] to remove 
  ''.join(variable)  will combine and join string
  (variable).split('.') will split and seperate into seperate entities

  
  # Email Ex.1
  ```
  1 email = 'name@domain.com'
  2 p1 = email.split ('@')
  3 p2 = ('.').join(p1)
  4 p3 = p2.split('.')
  5 print(p3)

```

```
  1 Fellowship = ['Frodo' , 'Sam', 'Mary' , 'Pip']
  2 name = '{} and {} beared the ring'.format(Fellowship[0], Fellowship[1])
  3 print (name)
# fellowship = [] 
# fellowship.append ('')
```
use print(type( variable) for the exam
```
1 blank = []
  2 e = 'name@domain.com'
  3 e2 = e.split('@')
  4 e3 = e.split ('.')
  5 
  6 blank.append(e2[0])
  7 blank.append(e2[1].split('.')[0])
  8 blank.append(e2[1].split('.')[1])
  9 print (blank)

```
equal ==
not equal !=
lt = <
lt= = <=
gt = >
gt= >=

if:
elif:
else:
need colon : after any flow statements.

```
  1 num = int(input('Type a number:\n'))
  2 if num == 7:
  3     print('This is True')
  4 elif num < 7:
  5     print('num ' + str(num) + ' is < 7')
  6 elif num > 7 and num < 20:
  7     print(str(num) + ' is between 7 and 20')
  8 else:         
  9     print(str(num)  + ' is too big')

```
#fizzbuzz example with reimainder/multiple
```num = int(input('Type a number:\n'))
if num%5 == 0 and num%3 == 0:
    print('fizzbuzz')
elif num%3 == 0:
    print('fizz')
elif num%5 == 0:
    print('buzz')
else:
    print(num)

```

