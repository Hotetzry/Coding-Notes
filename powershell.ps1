-descending -proe# POWERSHELL Notes
Enter powershell: xfreerdp /u:student /v:10.50.40.76 -dynamic-resolution +glyph-cache +clipboard

get-command -verb/-noun (shows all verbs and noun cmdlets/alias/functions
-example will show examples of the cmd
get-help *log* will show all commands relating to.
# fine within directories by filename or type
get-childitem -path C:/windows -filter *.exe -recurse -name
# get running process list that only start with S
get-process -name s*

# Find the cmdlet and its purpose for the following aliases
get-command gal/dir/echo/?

# display list of firewall settings
run as administrator : Get-NetFirewallRule

# create a new alias
New-Alias -name "gh" get-help
# using script to complete task. array
$array = "gal", "dir", "echo", "?", "ft"
$array | foreach-object{get-alias $_}
# (get-process).processname

get-process | get-member -membertype properties/methods: lists all available members for given command.

get-service | where-object {$_.status -eq "running"}

get-service | where-object -property status -eq 'stopped'

$var1 = "jon"
write-host "Hello $var1"
write-host 'Hello var1'

$x = 10
Get-variable x
Get-childitem variable:x

$x, $y, $z = "this", "that", "third"
test-path variable:x
remove-variable x
del variable:x

function fruit-host {
    write-host "Apple"
    write-host "Orange"
    write-host "Banana"
    write-host "Pear"
    }


 function Fruit-output {
    Write-Output "Apple"
    Write-Output "Orange"
    Write-Output "Banana"
    Write-Output "Pear" 
    } 
   
 fruit-host | sort 
 fruit-output | sort



 clear-host
$var1 = get-random -minimum 25 -maximum 50
$var2 = get-random -minimum 1 -Maximum 10
$sum = $var1 + $var2 
$sub = $var1 - $var2 would suggest you to have it in a csv file and pass the file to the script.
$prod = $var1 * $var2
$quo = $var1 / $var2

write-output "$var1 + $var2 = $sum" `n
write-output "$var1 - $var2 = $sub" `n
write-output "$var1 * $var2 = $prod" `n
write-output "$var1 / $var2 = $quo" `n



$revarray = -3..15
#$revarray = $revarray[($revarray.length-1)..0]
#$revarray


#$revarray = $revarray[($revarray.length-1)..0] 
$revarray | where-object {$_ %3 -eq 0} | write-output 


# Dictionary use
##
$employee1 = [ordered]@{}
$employee2 = [ordered]@{}
$employee3 = [ordered]@{}

$employee1.First = "Mary"
$employee1["Last"] = "Hopper"
$employee1.ID = "001"
$employee1["Job"] = "Software Developer"


$employee2.First = "John"
$employee2["Last"] = "Williams"
$employee2.ID = "002"
$employee2["Job"] = "Web Developer"
 
$Fname = Read-host "please type your First name"
$LName = Read-host "please type your Last name"
$JobT= Read-Host "please type your job position"
$employee3.First = "$Fname"
$employee3["Last"] = "$LName"
$employee3.ID = "003"
$employee3["Job"] = "$JobT"

$employee1
$employee2
$employee3

##
foreach ($grp in (get-localgroup).name) {
    write-host "`n$grp" -ForegroundColor red
    '==================================='
    (Get-LocalGroupMember -Name $grp).name ` -replace("{$env:computername\\",'')
    }


get-ciminstance win32_service | sort-object -property state | ft -Property ProcessId,Name,State,Pathname

$myblock = {get-service | format-table name, status}
 & $myblock

get-childitem | sort-object -property extension -Descending | ft -groupby extension

get-childitem | group-object {$_.length -lt 1kb}

Get-process | select-object -last/-first 10


# display only day of the week 
get-date | select-object -expandproperty dayofweek 

# display command to show installed hotfix 
get-hotfix/ then expand on hotfix
get-hotfix | sort-object -property installedon | format-table installedon, hotfixid, description 


# display processes that were first and last time started
get-process | where-object starttime | sort-object -property starttime | select-object -first 1 -last 1  -property starttime 

# get all services that are running 
get-service | where-object{$_.status -eq 'running'}

# get object where size is greater than 100kb
gci *.txt | where-object{$_.length -gt 100}

# find anything starting with microsoft
get-process | Where-Object {$_.company -like 'micro*'} | format-table name, description, company

# find any process that is not powershell
get-process | Where-Object {$_.name -notlike 'powershell*'} | sort-object id -Descending

# sort non idle processnames
get-process | Where-Object processname -ne "idle" | sort-object starttime | select -last 10 | format-table processname, starttime

# get unique numbers from a long string of numbers 
1,2,3,1,2,3,1,2,3,1,2,3 | sort-object | get-unique

# get count of objects/files in a folder
Get-ChildItem | Measure-Object Length

# count in an array 
$array = 1,2,3,4,5
$sum = 0 
$array | foreach-object {$sum += $_}
$sum

# adding to objects
add-member -MemberType NoteProperty -name color -value white -InputObject $mystruck
Add-Member -me NoteProperty -in $mystruck -na make -Value honda -force
Add-Member -InputObject $mystruck NoteProperty model "Tundra sr5(technically)"
$mystruck

 $mystruck | Add-Member ScriptMethod park { "finding a spot is impossible"}
 Add-Member -InputObject $mystruck ScriptMethod accelerate { "skinny pedal on right"}
7,8,9,6,15 -gt 8

$fruit = 'mango', 'watermelon', 'tomatoes'

$fruit -contains 'apple'

'powershell' -like "*shell"
true

$text = "your account username is ACE4495"
$pattern = '([A-F]{3})(\d{4})'
$text -match $pattern
true

$x = 11
if($x -gt 10){"$x is larger than 10"}
else {"11 is larger than 10"}


$x = 2 ("n")
if ($x -eq 5) {
    write-host "bob"
    }
elseif ($x -eq 4) {
    write-host "sue"
    }
elseif ($x -eq 2) {
    write-host "Tom"
    }
elseif ($x -gt 1) {
    write-host "Mary"
    }
else {
    write-host "who am i?"
    }


$nums = 1,2,3,4,5
$nums | ForEach-Object{$_ * 5}



$nums = 1, 2, 3, 4, 5
$sum = 0
$nums | ForEach-Object {$sum += $_ }
$sum

get-process | Select-Object -first 10 | ForEach-Object {$_.name} | ForEach-Object {$_.toupper()}


$teams = "yankees", "fsu", "tigers", "greenjackets"
foreach($teams in $teams){"sportsball $teams"}
sportsball yankees
sportsball fsu
sportsball tigers
sportsball greenjackets


$var = ""
while($var -ne "MUHRINS"){
    $var = read-host "whiich branch of the military is the best?"
    }
whiich branch of the military is the best?: army
whiich branch of the military is the best?: navy
whiich branch of the military is the best?: coast guard
whiich branch of the military is the best?: air force
whiich branch of the military is the best?: MUHRINS


$num = 0
DO {
    $num
    $num++
}while($num -le 100 -and $num -ne 80)
