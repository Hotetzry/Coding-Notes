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

