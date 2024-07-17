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
# Define function and for 
```

#def Beer():
   # beer =  [ 'Coors', 'Coors light', 'Coors banquet']
    #for drinks in beer:
       # print(drinks)
#Beer()

def Xmen():
    xmen = ['Superman', 'Night Crawler', 'Deadpool', 'Storm']
    for hero in xmen:
        if hero == 'Superman':
            print('wrong universe')
        elif hero == 'Deadpool':
            print(hero + ' is the best one!')
        else:
            print('This is a marvel hero')
Xmen() 

```
# WHile loop ex
```
num = 0
while num < 5:
    print(num)
    num +=1

```
.upper all capitals
.lower all lowers
# Pass/break/continue/return
```
def test():
    while True:
        usr = input("Type 'Pass', 'Break', 'Continue', or 'Return':\n").lower()
        if usr == 'pass':
            pass
            print("This is a 'pass'.")
        elif usr == 'break':
            break
            print("This is a 'break.")
        elif usr == 'continue':
            continue
            print("This is a 'continue'.")
        elif usr == 'return':
            return
            print == ("This is a 'return'.")
        else:
            print('Please choose a valid option.')

```

```

#!/usr/bin/env python3

def guess_number(n):
    while True:
        correct = int(input('type a number between 1-100\n'))
        if correct == (23):
             print('WIN')
             break
        elif correct < (23):
             print('this is lower than the number')
        elif correct > (100):
             print('this is outside the scope')
        elif correct > (23):
             print(' this is higher than the number')

guess_number(23)
                                                                                   

```

# range(n)
range is a class and can be type casted into a range
list(range(10)) [0, 1, 2, 3, 4, 5, 6, 7, 8, 9} range(start, stop, step) = list(range(5,10,2)) = 5, 7, 9

# slicing nums [::] start stop step slicing nums {::-1} = 5, 4, 3, 2, 1

ord ('a') chr ('97') opposites
alphabet = []
for i in range(07, 123):
alphabet.append (chr(i))

```

def update_light(current):
    if current == "green":
        return "yellow"
    elif current == "yellow":
        return "red"
    elif current == "red":
        return "green"
    else:
        return "This is not a traffic light color."

```
#Dictionary {}

```
romanNumerals = {'I':1, 'V':5, 'X':10, 'L':50}
romanNumerals['X']

romanNumerals['C'] = 100
romanNumerals['D'] = 500
romanNumerals['M'] = 1000

romanNumerals['C']

del romanNumerals['C']
'C' in romanNumerals
'M' in romanNumerals

```
romanNumerals = {'I':1, 'V':5, 'X':10, 'L':50, 'C':100, 'D':500, 'M':1000}

#Print all keys with values
for key in romanNumerals:
    print('{} = {}'.format(key, romanNumerals[key]))

#Easier method
for key, value in romanNumerals.items():
    print('{} = {}'.format(key, value))


