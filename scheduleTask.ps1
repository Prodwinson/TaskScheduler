# Create an action for the Task 
$action = New-ScheduledTaskAction -Execute ".\startVM.ps1"

# Create a $trigger such as a time that will execute the $action
$trigger = New-ScheduledTaskTrigger -Daily -At 9pm  

# Create the schedule task following by a name, action, trigger, and a description
Register-ScheduledTask -TaskName "Start-VM" -Action $action -Trigger $trigger -Description "Starts All Virtual Machines" -RunLevel Highest
