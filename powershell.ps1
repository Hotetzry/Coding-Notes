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



