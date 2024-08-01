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

$line1 = "Do you have model number: MT5437 for John.doe@sharklasers.com"
$line2 = "What model number for John.doe@sharklasers.com"
$line3 = "the model number for John.doe@sharklasers.com is MT5437"
$Model = "MT5437"
$line1,$line2,$line3 | foreach-object {
if ($_ -match $model) {
    write-host  $matches[0]":$_"
    }
else{
    write-host "Model number not on: $_"
    }
}

$array = "notepad.exe", "MsEdge.exe", "mspaint.exe"
$array | ForEach-Object {Start-Process $_}
Get-Process | sort starttime | select -last 3 | sort ID | ft ID,name,starttime

Add-Member -InputObject $mystruck ScriptMethod accelerate { "skinny pedal on right"}
$mystruck | Add-Member -InputObject ScriptMethod park { "finding a spot is impossible"}

$mystruck | Add-Member ScriptMethod park { "finding a spot is impossible"}

$mystruck.park()


get-process | Where-Object processname -ne "idle" | sort-object starttime | select -last 10 | format-table processname, starttime




$psitem same as $_
$True/$False
$Matches/$Input
F5 runs script highlighted text
F8 runs entire script

function Get-Sum{
    Begin {$_ - 0}
    Process {$sum += $_; $_}
    End {$sum}



Function Get-Multisum([array]$array,[int]$number){
    Begin{$sum = 0}
    process{
        foreach($num in $array){
         if($num -eq $number){
            continue
            }
            $sum += $num; $sum; $num
        }
    }
    end{$sum}    


##

}

Function Get-Multisum([array]$array,[int]$number){
    Begin{$sum = @()}
    process{
        foreach($num in $array){
         if($num -eq $number){
            continue
            }
            $sum += $num
        }
    }
    end{($sum | Measure-Object -sum).count/.sum}    





}

Function Get-Longestname{
    Begin{
        $count = 0 
        $states = @()
    }
    Process{
        while($count -lt 3){
            $usr = read-host "Enter a U.S State"
            $states += $usr
            $count += 1 
        }
    }
    End{
        $list = $states | sort -Property length -Descending
        foreach($state in $list){
            "$state`: " + $state.length
        }
    }

}



Function Get-Netinfo {
    $pattern = '.*?((\d{1,3}\.){3}\d{1,3})'
    $netinfo = ipconfig
    $ip = $netinfo -match "IPV4$pattern" | ForEach-Object{if ($_ -match $pattern){$matches[1]}}
    $subnet = $netinfo -match "Subnet$pattern" | ForEach-Object{if ($_ -match $pattern){$matches[1]}}
    $gw = $netinfo -match "Gate$pattern" | ForEach-Object{if ($_ -match $pattern){$matches[1]}}
    
    "IP: {0}" -f $ip
    "Subnet: {0}" -f $subnet
    "Gateway: {0}" -f $gw
    
OR 

Function Get-Netinfo {
    $pattern = '.*?((\d{1,3}\.){3}\d{1,3})'
    $netinfo = ipconfig
    $ip = $netinfo -match "IPV4$pattern" | ForEach-Object{if ($_ -match $pattern){$matches[1]}}
    $subnet = $netinfo -match "Subnet$pattern" | ForEach-Object{if ($_ -match $pattern){$matches[1]}}
    $gw = $netinfo -match "Gate$pattern" | ForEach-Object{if ($_ -match $pattern){$matches[1]}}
    
    "IP: {0}`nSubnet: {1}`nGateway: {2}" -f $ip,$subnet,$gw
    }
    
'1.8.2.44'.split(".")[1]
#1,2,3,4,5 -join ""




Practice Exam #1 

<# 1 #>
function q1($var1,$var2,$var3,$var4) {
    <# Return the product of the arguments #>
    $prod = $var1 * $var2 * $var3 * $var4 
    write-output "$prod"




<# 2 #>
function q2($arr,$rows,$cols,$key) {
    <# Search the 2 dimensional array for the first occurance of key at column index 0
       and return the value at column index 9 of the same row.
       Return -1 if the key is not found.
      
    #>
    foreach($row in $arr) {
        if($row[0] -eq $key){
            return $row[9]
        }
    }
    return -1 
}



<# 3 #>

function q3 {
    <# In a loop, prompt the user to enter positive integers one at time.
       Stop when the user enters a -1. Return the maximum positive
       value that was entered."
	#> $vals = @()
       do { 
       $val = read-host
       if($val -ne -1){
           $vals += $val
    }
    } until($val -eq -1)
    return ($vals | measure-object -maximum).maximum
 }




<# 4 #>
<# Return the line of text from the file given by the `$filename
argument that corresponds to the line number given by `$whichline.
The first line in the file corresponds to line number 0."
#> 
  function q4($filename,$whichline) {
    $number = $whichline
    $Answer = Get-Content $filename | Select-Object -index $number / $whichline  <---- ($whichline)
    $Answer
    
}

alternate 4
$content = get-content $filename
return $content[$whichline]
return (get-content $filename)[$whichline]


<# 5 #> 
<# Return the child items from the given path sorted
ascending by their Name #> 
function q5($path) {
       Get-childitem -path $path | sort-object name
}


<# 6 #>
function q6 {
    <# Return the sum of all elements provided on the pipeline
	#>
     $sum = 0
     $input | foreach {$sum += $_ }
     $sum
     
}


<# 7 #>
function q7 {
	<# Return only those commands whose noun is process #>
    get-command -noun 'process'
}

<# 8 #>
function q8($adjective) {
    <# Return the string 'PowerShell is ' followed by the adjective given
	   by the `$adjective argument
	#>    
     -join ("PowerShell is", " $adjective")
}


<# 9 #> 
function q9($addr) {
	<# Return `$true when the given argument is a valid IPv4 address,
	   otherwise return `$false. For the purpose of this function, regard
	   addresses where all octets are in the range 0-255 inclusive to
	   be valid.
	#>
    $pattern = '^((25[0-5]|(2[0-4]|1\d|[1-9]|)\d)\.?\b){4}$'
    if ($addr -match $pattern) { 
        return $true
        }
    else{
        return $false
        }
    
}
alternate 9 

$pattern = '^((25[0-5]|(2[0-4]|1\d|[1-9]|)\d)\.?\b){4}$'
    return $addr -match $pattern  

    
<# 10 #>

function q10 ($filepath,$lasthash) {
    <# Return `$true if the contents of the file given in the
       `$filepath argument have changed since `$lasthash was
       computed. `$lasthash is the previously computed SHA256
       hash (as a string) of the contents of the file. #> 
       $A = get-filehash -path $filepath -Algorithm SHA256
  
       $NewHash = $A.hash 
        return $Newhash -ne $lasthash
      
}

