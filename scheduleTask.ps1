$action = New-ScheduledTaskAction -Execute ".\startVM.ps1"
$trigger = New-ScheduledTaskTrigger -Daily -At 9pm  
Register-ScheduledTask -TaskName "Start-VM" -Action $action -Trigger $trigger -Description "Starts All Virtual Machines" -RunLevel Highest