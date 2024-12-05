#Verb-Noun Commandlet

Get-Date
Get-Service #Shows all services

Get-Command # Shows all Cmdlet

# -------------------------------------------------------------------------------------------------------------------
Get-Command -noun Service  # All cmdlet that contains 'service'
# -------------------------------------------------------------------------------------------------------------------
Get-Command -Name get*

# CommandType     Name                                               Version    Source
# -----------     ----                                               -------    ------
# Alias           Get-AppPackage                                     2.0.1.0    Appx
# Alias           Get-AppPackageAutoUpdateSettings                   2.0.1.0    Appx
# Alias           Get-AppPackageDefaultVolume                        2.0.1.0    Appx
# # ...
# Function        Get-AppBackgroundTask                              1.0.0.0    AppBackgroundTask
# Function        Get-AppvVirtualProcess                             1.0.0.0    AppvClient
# # ...
# Function        Get-WinhttpProxy                                   1.0.0.0    WinHttpProxy
# Cmdlet          Get-Acl                                            7.0.0.0    Microsoft.PowerShell.Security
# Cmdlet          Get-Alias                                          7.0.0.0    Microsoft.PowerShell.Utility
# Cmdlet          Get-AppLockerFileInformation                       2.0.0.0    AppLocker
# Cmdlet          Get-AppLockerPolicy                                2.0.0.0    AppLocker
# Cmdlet          Get-AppProvisionedSharedPackageContainer           3.0        Dism
# Cmdlet          Get-AppSharedPackageContainer                      2.0.1.0    Appx
# Cmdlet          Get-AppxDefaultVolume                              2.0.1.0    Appx
# Cmdlet          Get-AppxPackage                                    2.0.1.0    Appx
# Cmdlet          Get-AppxPackageAutoUpdateSettings                  2.0.1.0    Appx
# Cmdlet          Get-AppxPackageManifest                            2.0.1.0    Appx
# # ...
# Application     getmac.exe                                         10.0.2262… C:\Windows\system32\getmac.exe

# -----------------------------------------------------------------------------------------------------------------

# CommandType     Name                                               Version    Source
# -----------     ----                                               -------    ------
# Cmdlet          Get-Service                                        7.0.0.0    Microsoft.PowerShell.Management
# Cmdlet          New-Service                                        7.0.0.0    Microsoft.PowerShell.Management
# Cmdlet          Remove-Service                                     7.0.0.0    Microsoft.PowerShell.Management
# Cmdlet          Restart-Service                                    7.0.0.0    Microsoft.PowerShell.Management
# Cmdlet          Resume-Service                                     7.0.0.0    Microsoft.PowerShell.Management
# Cmdlet          Set-Service                                        7.0.0.0    Microsoft.PowerShell.Management
# Cmdlet          Start-Service                                      7.0.0.0    Microsoft.PowerShell.Management
# Cmdlet          Stop-Service                                       7.0.0.0    Microsoft.PowerShell.Management
# Cmdlet          Suspend-Service                                    7.0.0.0    Microsoft.PowerShell.Management

# *******************************************************************************************************************


# -------------------------------------------------------------------------------------------------------------------
Get-Help Get-Service  # Gives description about the provided cmdlet
# -------------------------------------------------------------------------------------------------------------------

# NAME
#     Get-Service

# SYNTAX
#     Get-Service [[-Name] <string[]>] [-DependentServices] [-RequiredServices] [-Include <string[]>] [-Exclude <string[]>] [<CommonParameters>]

#     Get-Service -DisplayName <string[]> [-DependentServices] [-RequiredServices] [-Include <string[]>] [-Exclude <string[]>] [<CommonParameters>]

#     Get-Service [-DependentServices] [-RequiredServices] [-Include <string[]>] [-Exclude <string[]>] [-InputObject <ServiceController[]>] [<CommonParameters>]


# ALIASES
#     gsv


# REMARKS
#     Get-Help cannot find the Help files for this cmdlet on this computer. It is displaying only partial help.
#         -- To download and install Help files for the module that includes this cmdlet, use Update-Help.
#         -- To view the Help topic for this cmdlet online, type: "Get-Help Get-Service -Online" or
#            go to https://go.microsoft.com/fwlink/?LinkID=2096496.
# *******************************************************************************************************************

Get-Help Get-Date

# NAME
#     Get-Date
    
# SYNTAX
#     Get-Date [[-Date] <datetime>] [-Year <int>] [-Month <int>] [-Day <int>] [-Hour <int>] [-Minute <int>] [-Second <int>] [-Millisecond 
#     <int>] [-DisplayHint {Date | Time | DateTime}] [-Format <string>] [-AsUTC] [<CommonParameters>]
    
#     Get-Date [[-Date] <datetime>] -UFormat <string> [-Year <int>] [-Month <int>] [-Day <int>] [-Hour <int>] [-Minute <int>] [-Second <int>] 
#     [-Millisecond <int>] [-DisplayHint {Date | Time | DateTime}] [-AsUTC] [<CommonParameters>]
    
#     Get-Date -UnixTimeSeconds <long> [-Year <int>] [-Month <int>] [-Day <int>] [-Hour <int>] [-Minute <int>] [-Second <int>] [-Millisecond 
#     <int>] [-DisplayHint {Date | Time | DateTime}] [-Format <string>] [-AsUTC] [<CommonParameters>]
    
#     Get-Date -UnixTimeSeconds <long> -UFormat <string> [-Year <int>] [-Month <int>] [-Day <int>] [-Hour <int>] [-Minute <int>] [-Second 
#     <int>] [-Millisecond <int>] [-DisplayHint {Date | Time | DateTime}] [-AsUTC] [<CommonParameters>]


# ALIASES
#     None


# REMARKS
#     Get-Help cannot find the Help files for this cmdlet on this computer. It is displaying only partial help.
#         -- To download and install Help files for the module that includes this cmdlet, use Update-Help.
#         -- To view the Help topic for this cmdlet online, type: "Get-Help Get-Date -Online" or
#            go to https://go.microsoft.com/fwlink/?LinkID=2096615.


# -------------------------------------------------------------------------------------------------------------------
Get-Alias 
# for readablity, avoid to use alias so that someone else can read the code you write and makes the maintanance process much more easier.
# -------------------------------------------------------------------------------------------------------------------

# CommandType     Name                                               Version    Source
# -----------     ----                                               -------    ------
# Alias           ? -> Where-Object
# Alias           % -> ForEach-Object
# Alias           ac -> Add-Content
# Alias           cat -> Get-Content
# Alias           cd -> Set-Location
# Alias           chdir -> Set-Location
# Alias           clc -> Clear-Content
# Alias           clear -> Clear-Host
# Alias           clhy -> Clear-History
# Alias           cli -> Clear-Item
# Alias           clp -> Clear-ItemProperty
# Alias           cls -> Clear-Host
# Alias           clv -> Clear-Variable
# Alias           cnsn -> Connect-PSSession
# Alias           compare -> Compare-Object
# Alias           copy -> Copy-Item
# Alias           cp -> Copy-Item
# Alias           cpi -> Copy-Item
# Alias           cpp -> Copy-ItemProperty
# Alias           cvpa -> Convert-Path
# Alias           dbp -> Disable-PSBreakpoint
# Alias           del -> Remove-Item
# Alias           diff -> Compare-Object
# Alias           dir -> Get-ChildItem
# Alias           dnsn -> Disconnect-PSSession
# Alias           ebp -> Enable-PSBreakpoint
# Alias           echo -> Write-Output
# Alias           epal -> Export-Alias
# Alias           epcsv -> Export-Csv
# Alias           erase -> Remove-Item
# Alias           etsn -> Enter-PSSession
# Alias           exsn -> Exit-PSSession
# Alias           fc -> Format-Custom
# Alias           fhx -> Format-Hex                                  7.0.0.0    Microsoft.PowerShell.Utility
# Alias           fl -> Format-List
# Alias           foreach -> ForEach-Object
# Alias           ft -> Format-Table
# Alias           fw -> Format-Wide
# Alias           gal -> Get-Alias
# Alias           gbp -> Get-PSBreakpoint
# Alias           gc -> Get-Content
# Alias           gcb -> Get-Clipboard                               7.0.0.0    Microsoft.PowerShell.Management
# Alias           gci -> Get-ChildItem
# Alias           gcm -> Get-Command
# Alias           gcs -> Get-PSCallStack
# Alias           gdr -> Get-PSDrive
# Alias           gerr -> Get-Error
# Alias           ghy -> Get-History
# Alias           gi -> Get-Item
# Alias           gin -> Get-ComputerInfo                            7.0.0.0    Microsoft.PowerShell.Management
# Alias           gjb -> Get-Job
# Alias           gl -> Get-Location
# Alias           gm -> Get-Member
# Alias           gmo -> Get-Module
# Alias           gp -> Get-ItemProperty
# Alias           gps -> Get-Process
# Alias           gpv -> Get-ItemPropertyValue
# Alias           group -> Group-Object
# Alias           gsn -> Get-PSSession
# Alias           gsv -> Get-Service
# Alias           gtz -> Get-TimeZone                                7.0.0.0    Microsoft.PowerShell.Management
# Alias           gu -> Get-Unique
# Alias           gv -> Get-Variable
# Alias           h -> Get-History
# Alias           history -> Get-History
# Alias           icm -> Invoke-Command
# Alias           iex -> Invoke-Expression
# Alias           ihy -> Invoke-History
# Alias           ii -> Invoke-Item
# Alias           ipal -> Import-Alias
# Alias           ipcsv -> Import-Csv
# Alias           ipmo -> Import-Module
# Alias           irm -> Invoke-RestMethod
# Alias           iwr -> Invoke-WebRequest
# Alias           kill -> Stop-Process
# Alias           ls -> Get-ChildItem
# Alias           man -> help
# Alias           md -> mkdir
# Alias           measure -> Measure-Object
# Alias           mi -> Move-Item
# Alias           mount -> New-PSDrive
# Alias           move -> Move-Item
# Alias           mp -> Move-ItemProperty
# Alias           mv -> Move-Item
# Alias           nal -> New-Alias
# Alias           ndr -> New-PSDrive
# Alias           ni -> New-Item
# Alias           nmo -> New-Module
# Alias           nsn -> New-PSSession
# Alias           nv -> New-Variable
# Alias           ogv -> Out-GridView
# Alias           oh -> Out-Host
# Alias           popd -> Pop-Location
# Alias           ps -> Get-Process
# Alias           psedit -> Open-EditorFile                          0.2.0      PowerShellEditorServices.Commands
# Alias           pushd -> Push-Location
# Alias           pwd -> Get-Location
# Alias           r -> Invoke-History
# Alias           rbp -> Remove-PSBreakpoint
# Alias           rcjb -> Receive-Job
# Alias           rcsn -> Receive-PSSession
# Alias           rd -> Remove-Item
# Alias           rdr -> Remove-PSDrive
# Alias           ren -> Rename-Item
# Alias           ri -> Remove-Item
# Alias           rjb -> Remove-Job
# Alias           rm -> Remove-Item
# Alias           rmdir -> Remove-Item
# Alias           rmo -> Remove-Module
# Alias           rni -> Rename-Item
# Alias           rnp -> Rename-ItemProperty
# Alias           rp -> Remove-ItemProperty
# Alias           rsn -> Remove-PSSession
# Alias           rv -> Remove-Variable
# Alias           rvpa -> Resolve-Path
# Alias           sajb -> Start-Job
# Alias           sal -> Set-Alias
# Alias           saps -> Start-Process
# Alias           sasv -> Start-Service
# Alias           sbp -> Set-PSBreakpoint
# Alias           scb -> Set-Clipboard                               7.0.0.0    Microsoft.PowerShell.Management
# Alias           select -> Select-Object
# Alias           set -> Set-Variable
# Alias           shcm -> Show-Command
# Alias           si -> Set-Item
# Alias           sl -> Set-Location
# Alias           sleep -> Start-Sleep
# Alias           sls -> Select-String
# Alias           sort -> Sort-Object
# Alias           sp -> Set-ItemProperty
# Alias           spjb -> Stop-Job
# Alias           spps -> Stop-Process
# Alias           spsv -> Stop-Service
# Alias           start -> Start-Process
# Alias           stz -> Set-TimeZone                                7.0.0.0    Microsoft.PowerShell.Management
# Alias           sv -> Set-Variable
# Alias           tee -> Tee-Object
# Alias           type -> Get-Content
# Alias           where -> Where-Object
# Alias           wjb -> Wait-Job
# Alias           write -> Write-Output
# *******************************************************************************************************************

Get-Help Get-Service

# NAME
#     Get-Service
    
# SYNTAX
#     Get-Service [[-Name] <string[]>] [-DependentServices] [-RequiredServices] [-Include <string[]>] [-Exclude <string[]>] 
#     [<CommonParameters>]
    
#     Get-Service -DisplayName <string[]> [-DependentServices] [-RequiredServices] [-Include <string[]>] [-Exclude <string[]>] 
#     [<CommonParameters>]
    
#     Get-Service [-DependentServices] [-RequiredServices] [-Include <string[]>] [-Exclude <string[]>] [-InputObject <ServiceController[]>] 
#     [<CommonParameters>]
    

# ALIASES
#     gsv


# REMARKS
#     Get-Help cannot find the Help files for this cmdlet on this computer. It is displaying only partial help.
#         -- To download and install Help files for the module that includes this cmdlet, use Update-Help.
#         -- To view the Help topic for this cmdlet online, type: "Get-Help Get-Service -Online" or
#            go to https://go.microsoft.com/fwlink/?LinkID=2096496.



# -------------------------------------------------------------------------------------------------------------------
cd # used for changing directory
Set-Location -Path C:\ # used for changing directory
# *******************************************************************************************************************


Get-ExecutionPolicy # Default value is  RemoteSigned for W11 and Restiricted for W10

# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.4

# Enforcement of these policies only occurs on Windows platforms. The PowerShell execution policies are as follows:

# AllSigned : 
# -----------
# Scripts can run.
# Requires that all scripts and configuration files be signed by a trusted publisher, including scripts that you write on the local computer.
# Prompts you before running scripts from publishers that you haven't yet classified as trusted or untrusted.
# Risks running signed, but malicious, scripts.

# Bypass : 
# --------
# Nothing is blocked and there are no warnings or prompts.
# This execution policy is designed for configurations in which a PowerShell script is built into a larger application or for configurations in which PowerShell is the foundation for a program that has its own security model.

# Default :
# ---------
# Sets the default execution policy.
# Restricted for Windows clients.
# RemoteSigned for Windows servers.

# RemoteSigned :
# --------------
# The default execution policy for Windows server computers.
# Scripts can run.
# Requires a digital signature from a trusted publisher on scripts and configuration files that are downloaded from the internet which includes email and instant messaging programs.
# Doesn't require digital signatures on scripts that are written on the local computer and not downloaded from the internet.
# Runs scripts that are downloaded from the internet and not signed, if the scripts are unblocked, such as by using the Unblock-File cmdlet.
# Risks running unsigned scripts from sources other than the internet and signed scripts that could be malicious.

# Restricted :
# ------------
# The default execution policy for Windows client computers.
# Permits individual commands, but does not allow scripts.
# Prevents running of all script files, including formatting and configuration files (.ps1xml), module script files (.psm1), and PowerShell profiles (.ps1).

# Undefined :
# -----------
# There is no execution policy set in the current scope.
# If the execution policy in all scopes is Undefined, the effective execution policy is Restricted for Windows clients and RemoteSigned for Windows Server.

# Unrestricted :
# --------------
# The default execution policy for non-Windows computers and cannot be changed.
# Unsigned scripts can run. There is a risk of running malicious scripts.
# Warns the user before running scripts and configuration files that are not from the local intranet zone.

#  Note :
# On systems that do not distinguish Universal Naming Convention (UNC) paths from internet paths, scripts that are identified by a UNC path might not be permitted to run with the RemoteSigned execution policy.

Get-ExecutionPolicy -List

# Scope ExecutionPolicy
# ----- ---------------
# MachinePolicy       Undefined
# UserPolicy       Undefined
# Process          Bypass
# CurrentUser       Undefined
# LocalMachine    RemoteSigned


Set-ExecutionPolicy -ExecutionPolicy AllSigned # Requires admin priviledge

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -WhatIf
# What if: Performing the operation "Set-ExecutionPolicy" on target "RemoteSigned".

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Confirm:$false -Force
# -Confirm:$false will let the cmdlet runs without prompting any confirmation dialog. It might be dangeraous in some scenarios. So, ensure that the result of the cmdlet is not harm irredeemable. 

# -----------------------------------------------------------------------------------------------------------------
