# POWERSHELL Notes
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


```
 clear-host
$var1 = get-random -minimum 25 -maximum 50
$var2 = get-random -minimum 1 -Maximum 10
$sum = $var1 + $var2 
$sub = $var1 - $var2
$prod = $var1 * $var2
$quo = $var1 / $var2

write-output "$var1 + $var2 = $sum" `n
write-output "$var1 - $var2 = $sub" `n
write-output "$var1 * $var2 = $prod" `n
write-output "$var1 / $var2 = $quo" `n
```
