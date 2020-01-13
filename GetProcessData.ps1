
###############################
#########  FUNCTIONS  #########
###############################

#Returns the private memory of given process in mega bytes
function Get-PrivateMemorySize-In-MegaByte
{
    Param ([int] $processID)
    $valueobject = Get-Process -Id $processID | Select-Object PrivateMemorySize  
    $value = $valueobject.PrivateMemorySize  / 1mb
    return [Math]::Round($value ,2)
}

#Returns the working set of given process in mega bytes
function Get-WorkingSet-In-MegaByte
{
    Param ([int] $processID)
    $valueobject = Get-Process -Id $processID | Select-Object ws  
    $value = $valueobject.ws  / 1mb
    return [Math]::Round($value ,2)
}

#Returns the virtual memory  of given process in mega bytes
function Get-VirtualMemory-In-MegaByte
{
    Param ([int] $processID)
    $valueobject = Get-Process -Id $processID | Select-Object vm  
    $value = $valueobject.vm  /1mb
    return [Math]::Round($value ,2)
}

###############################
#########  OUTPUT  ############
###############################

Write-Host "Total private memory of process 1532 is: $(Get-PrivateMemorySize-In-MegaByte 1532) MB"
Write-Host "Total working set of process 1532 is: $(Get-WorkingSet-In-MegaByte 1532) MB"
Write-Host "Total virtual memory of process 1532 is: $(Get-VirtualMemory-In-MegaByte 1532) MB"