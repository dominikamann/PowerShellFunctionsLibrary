
###############################
#########  FUNCTIONS  #########
###############################

#Returns the working set of given process, rounded
function Get-Working-Set-Rounded  
{
    Param ([int] $processID)

    $workingSet = Get-Process -Id $processID | Select-Object ws 
    $workingSetMegaByte = $workingSet.WS / 1mb
    return [Math]::Round($workingSetMegaByte,2)
}

###############################
#########  OUTPUT  ############
###############################

#Print out working set of Process (PID) 31928
Write-Host "Total working set of process 31928 is: $(Get-Working-Set-Rounded 31928) MB"


