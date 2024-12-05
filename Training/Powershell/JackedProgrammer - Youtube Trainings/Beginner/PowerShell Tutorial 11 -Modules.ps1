
$env:PSModulePath

$env:COMPUTERNAME

($env:PSModulePath).Split(';')
# C:\Users\rkarayigit\Documents\PowerShell\Modules
# C:\Program Files\PowerShell\Modules
# c:\program files\powershell\7\Modules
# C:\Program Files\WindowsPowerShell\Modules
# C:\Windows\system32\WindowsPowerShell\v1.0\Modules
# c:\Users\rkarayigit\.vscode\extensions\ms-vscode.powershell-2024.4.0\modules

Get-Module #Shows available module which is loaded on the current session

# ModuleType Version    PreRelease Name                                ExportedCommands
# ---------- -------    ---------- ----                                ----------------
# Manifest   7.0.0.0               Microsoft.PowerShell.Management     {Add-Content, Clear-Content, Clear-Item, Clear-ItemPro… 
# Manifest   7.0.0.0               Microsoft.PowerShell.Security       {ConvertFrom-SecureString, ConvertTo-SecureString, Get… 
# Manifest   7.0.0.0               Microsoft.PowerShell.Utility        {Add-Member, Add-Type, Clear-Variable, Compare-Object…} 
# Script     0.2.0                 PowerShellEditorServices.Commands   {Clear-Host, ConvertFrom-ScriptExtent, ConvertTo-Scrip… 
# Script     2.4.0      beta0      PSReadLine                          {Get-PSReadLineKeyHandler, Get-PSReadLineOption, Remov… 


Get-Module -ListAvailable #Shows available module which is loaded on the current session

# Directory: C:\program files\powershell\7\Modules

# ModuleType Version    PreRelease Name                                PSEdition ExportedCommands
# ---------- -------    ---------- ----                                --------- ----------------
# Manifest   7.0.0.0               CimCmdlets                          Core      {Get-CimAssociatedInstance, Get-CimClass, Ge…
# Manifest   1.2.5                 Microsoft.PowerShell.Archive        Desk      {Compress-Archive, Expand-Archive}
# Manifest   7.0.0.0               Microsoft.PowerShell.Diagnostics    Core      {Get-WinEvent, New-WinEvent, Get-Counter}
# Manifest   7.0.0.0               Microsoft.PowerShell.Host           Core      {Start-Transcript, Stop-Transcript}
# Manifest   7.0.0.0               Microsoft.PowerShell.Management     Core      {Add-Content, Clear-Content, Get-Clipboard, …
# Binary     1.0.4.1               Microsoft.PowerShell.PSResourceGet  Core,Desk {Find-PSResource, Get-InstalledPSResource, G…
# Manifest   7.0.0.0               Microsoft.PowerShell.Security       Core      {Get-Acl, Set-Acl, Get-PfxCertificate, Get-C…
# Manifest   7.0.0.0               Microsoft.PowerShell.Utility        Core      {Export-Alias, Get-Alias, Import-Alias, New-…
# Manifest   7.0.0.0               Microsoft.WSMan.Management          Core      {Disable-WSManCredSSP, Enable-WSManCredSSP, …
# Script     1.4.8.1               PackageManagement                   Desk      {Find-Package, Get-Package, Get-PackageProvi… 
# Script     2.2.5                 PowerShellGet                       Desk      {Find-Command, Find-DSCResource, Find-Module… 
# Script     7.0.0.0               PSDiagnostics                       Core      {Disable-PSTrace, Disable-PSWSManCombinedTra… 
# Script     2.3.5                 PSReadLine                          Desk      {Get-PSReadLineKeyHandler, Set-PSReadLineKey… 
# Binary     2.0.3                 ThreadJob                           Desk      Start-ThreadJob

#     Directory: C:\Program Files\WindowsPowerShell\Modules

# ModuleType Version    PreRelease Name                                PSEdition ExportedCommands
# ---------- -------    ---------- ----                                --------- ----------------
# Script     1.0.1                 Microsoft.PowerShell.Operation.Val… Desk      {Get-OperationValidation, Invoke-OperationVa… 
# Binary     1.0.0.1               PackageManagement                   Desk      {Find-Package, Get-Package, Get-PackageProvi… 
# Script     3.4.0                 Pester                              Desk      {Describe, Context, It, Should…}
# Script     1.0.0.1               PowerShellGet                       Desk      {Install-Module, Find-Module, Save-Module, U… 
# Script     2.0.0                 PSReadLine                          Desk      {Get-PSReadLineKeyHandler, Set-PSReadLineKey… 

#     Directory: C:\Windows\system32\WindowsPowerShell\v1.0\Modules

# ModuleType Version    PreRelease Name                                PSEdition ExportedCommands
# ---------- -------    ---------- ----                                --------- ----------------
# Manifest   1.0.0.0               AppBackgroundTask                   Core,Desk {Disable-AppBackgroundTaskDiagnosticLog, Ena… 
# Script     1.0.0.0               AssignedAccess                      Core,Desk {Clear-AssignedAccess, Get-AssignedAccess, S… 
# Manifest   1.0.0.0               BitLocker                           Core,Desk {Unlock-BitLocker, Suspend-BitLocker, Resume… 
# Script     2.0.0.0               BitsTransfer                        Core,Desk {Add-BitsFile, Complete-BitsTransfer, Get-Bi… 
# Manifest   1.0.0.0               BranchCache                         Core,Desk {Add-BCDataCacheExtension, Clear-BCCache, Di… 
# Manifest   1.0                   ConfigDefenderPerformance           Core,Desk {New-MpPerformanceRecording, Get-MpPerforman… 
# Manifest   1.0                   DefenderPerformance                 Core,Desk {New-MpPerformanceRecording, Get-MpPerforman… 
# Manifest   1.0.3.0               DeliveryOptimization                Core,Desk {Get-DeliveryOptimizationLog, Get-DeliveryOp… 
# Manifest   1.0.0.0               DirectAccessClientComponents        Core,Desk {Disable-DAManualEntryPointSelection, Enable… 
# Script     3.0                   Dism                                Core,Desk {Add-AppProvisionedSharedPackageContainer, A… 
# Manifest   1.0.0.0               DnsClient                           Core,Desk {Resolve-DnsName, Clear-DnsClientCache, Get-… 
# Manifest   1.0.0.0               EventTracingManagement              Core,Desk {Start-EtwTraceSession, New-EtwTraceSession,… 
# Script     2022.3.14…            Get-NetView                         Core,Desk Get-NetView
# Manifest   2.1.0.0               International                       Core,Desk {Copy-UserInternationalSettingsToSystem, Get… 
# Manifest   1.0.0.0               Kds                                 Core,Desk {Add-KdsRootKey, Get-KdsRootKey, Test-KdsRoo… 
# Manifest   1.0                   LanguagePackManagement              Core,Desk {Install-Language, Uninstall-Language, Get-I… 
# Script     1.0.0.0               LAPS                                Core,Desk {Find-LapsADExtendedRights, Get-LapsADPasswo… 
# Manifest   1.0.0.0               Microsoft.PowerShell.LocalAccounts  Core,Desk {Add-LocalGroupMember, Disable-LocalUser, En… 
# Manifest   1.0.0                 Microsoft.Windows.Bcd.Cmdlets       Core,Desk {Copy-BcdEntry, Disable-BcdElementBootDebug,…
# Manifest   1.0                   MMAgent                             Core,Desk {Disable-MMAgent, Enable-MMAgent, Set-MMAgen… 
# Manifest   2.0.0.0               NetAdapter                          Core,Desk {Disable-NetAdapter, Disable-NetAdapterBindi… 
# Manifest   2.0.0.0               NetConnection                       Core,Desk {Get-NetConnectionProfile, Set-NetConnection… 
# Manifest   1.0.0.0               NetEventPacketCapture               Core,Desk {New-NetEventSession, Remove-NetEventSession… 
# Manifest   2.0.0.0               NetLbfo                             Core,Desk {Add-NetLbfoTeamMember, Add-NetLbfoTeamNic, … 
# Manifest   1.0.0.0               NetNat                              Core,Desk {Get-NetNat, Get-NetNatExternalAddress, Get-… 
# Manifest   2.0.0.0               NetQos                              Core,Desk {Get-NetQosPolicy, Set-NetQosPolicy, Remove-… 
# Manifest   2.0.0.0               NetSecurity                         Core,Desk {Get-DAPolicyChange, New-NetIPsecAuthProposa… 
# Manifest   1.0.0.0               NetSwitchTeam                       Core,Desk {New-NetSwitchTeam, Remove-NetSwitchTeam, Ge… 
# Manifest   1.0.0.0               NetTCPIP                            Core,Desk {Get-NetIPAddress, Get-NetIPInterface, Get-N… 
# Manifest   1.0.0.0               NetworkConnectivityStatus           Core,Desk {Get-DAConnectionStatus, Get-NCSIPolicyConfi… 
# Manifest   1.0.0.0               NetworkSwitchManager                Core,Desk {Disable-NetworkSwitchEthernetPort, Enable-N… 
# Manifest   1.0.0.0               NetworkTransition                   Core,Desk {Add-NetIPHttpsCertBinding, Disable-NetDnsTr… 
# Manifest   1.0.0.0               PcsvDevice                          Core,Desk {Get-PcsvDevice, Start-PcsvDevice, Stop-Pcsv… 
# Manifest   1.0.0.0               PKI                                 Core,Desk {Add-CertificateEnrollmentPolicyServer, Expo… 
# Manifest   1.0.0.0               PnpDevice                           Core,Desk {Get-PnpDevice, Get-PnpDeviceProperty, Enabl… 
# Manifest   1.1                   PrintManagement                     Core,Desk {Add-Printer, Add-PrinterDriver, Add-Printer… 
# Binary     1.0.12                ProcessMitigations                  Core,Desk {Get-ProcessMitigation, Set-ProcessMitigatio… 
# Script     3.0                   Provisioning                        Core,Desk {Install-ProvisioningPackage, Export-Provisi… 
# Manifest   1.0.0.0               ScheduledTasks                      Core,Desk {Get-ScheduledTask, Set-ScheduledTask, Regis… 
# Manifest   2.0.0.0               SecureBoot                          Core,Desk {Confirm-SecureBootUEFI, Set-SecureBootUEFI,… 
# Manifest   2.0.0.0               SmbShare                            Core,Desk {Get-SmbShare, Remove-SmbShare, Set-SmbShare… 
# Manifest   2.0.0.0               SmbWitness                          Core,Desk {Get-SmbWitnessClient, Move-SmbWitnessClient… 
# Manifest   1.0.0.1               StartLayout                         Core,Desk {Export-StartLayout, Import-StartLayout, Exp…
# Manifest   2.0.0.0               Storage                             Core,Desk {Add-InitiatorIdToMaskingSet, Add-PartitionA… 
# Manifest   2.0.0.0               TLS                                 Core,Desk {New-TlsSessionTicketKey, Enable-TlsSessionT… 
# Manifest   1.0.0.0               TroubleshootingPack                 Core,Desk {Get-TroubleshootingPack, Invoke-Troubleshoo… 
# Manifest   2.0.0.0               TrustedPlatformModule               Core,Desk {Get-Tpm, Initialize-Tpm, Clear-Tpm, Unblock… 
# Binary     2.1.639.0             UEV                                 Core,Desk
# Manifest   2.0.0.0               VpnClient                           Core,Desk {Add-VpnConnection, Set-VpnConnection, Remov… 
# Manifest   1.0.0.0               Wdac                                Core,Desk {Get-OdbcDriver, Set-OdbcDriver, Get-OdbcDsn… 
# Manifest   2.0.0.0               Whea                                Core,Desk {Get-WheaMemoryPolicy, Set-WheaMemoryPolicy}  
# Manifest   1.0.0.0               WindowsDeveloperLicense             Core,Desk {Get-WindowsDeveloperLicense, Unregister-Win… 
# Script     1.0                   WindowsErrorReporting               Core,Desk {Enable-WindowsErrorReporting, Disable-Windo… 
# Manifest   1.0.0.0               WindowsSearch                       Core,Desk {Get-WindowsSearchSetting, Set-WindowsSearch… 
# Manifest   1.0.0.0               WindowsUpdate                       Core,Desk Get-WindowsUpdateLog

#     Directory: C:\Users\rkarayigit\.vscode\extensions\ms-vscode.powershell-2024.2.2\modules

# ModuleType Version    PreRelease Name                                PSEdition ExportedCommands
# ---------- -------    ---------- ----                                --------- ----------------
# Binary     3.20.1                PowerShellEditorServices            Core,Desk Start-EditorServices
# Script     2.4.0      beta0      PSReadLine                          Desk      {Get-PSReadLineKeyHandler, Set-PSReadLineKey… 
# Script     1.22.0                PSScriptAnalyzer                    Desk      {Get-ScriptAnalyzerRule, Invoke-ScriptAnalyz…


# Import a module
Import-Module -Name ScheduledTasks 
Get-Module

# ModuleType Version    PreRelease Name                                ExportedCommands
# ---------- -------    ---------- ----                                ----------------
# Manifest   7.0.0.0               Microsoft.PowerShell.Management     {Add-Content, Clear-Content, Clear-Item, Clear-ItemPro… 
# Manifest   7.0.0.0               Microsoft.PowerShell.Security       {ConvertFrom-SecureString, ConvertTo-SecureString, Get… 
# Manifest   7.0.0.0               Microsoft.PowerShell.Utility        {Add-Member, Add-Type, Clear-Variable, Compare-Object…} 
# Script     0.2.0                 PowerShellEditorServices.Commands   {Clear-Host, ConvertFrom-ScriptExtent, ConvertTo-Scrip… 
# Script     2.4.0      beta0      PSReadLine                          {Get-PSReadLineKeyHandler, Get-PSReadLineOption, Remov… 
# Manifest   1.0.0.0               ScheduledTasks                      {Disable-ScheduledTask, Enable-ScheduledTask, Export-S… 


Get-Command -Module ScheduledTasks # Returns every single possible 

# CommandType     Name                                               Version    Source
# -----------     ----                                               -------    ------
# Function        Disable-ScheduledTask                              1.0.0.0    ScheduledTasks
# Function        Enable-ScheduledTask                               1.0.0.0    ScheduledTasks
# Function        Export-ScheduledTask                               1.0.0.0    ScheduledTasks
# Function        Get-ClusteredScheduledTask                         1.0.0.0    ScheduledTasks
# Function        Get-ScheduledTask                                  1.0.0.0    ScheduledTasks
# Function        Get-ScheduledTaskInfo                              1.0.0.0    ScheduledTasks
# Function        New-ScheduledTask                                  1.0.0.0    ScheduledTasks
# Function        New-ScheduledTaskAction                            1.0.0.0    ScheduledTasks
# Function        New-ScheduledTaskPrincipal                         1.0.0.0    ScheduledTasks
# Function        New-ScheduledTaskSettingsSet                       1.0.0.0    ScheduledTasks
# Function        New-ScheduledTaskTrigger                           1.0.0.0    ScheduledTasks
# Function        Register-ClusteredScheduledTask                    1.0.0.0    ScheduledTasks
# Function        Register-ScheduledTask                             1.0.0.0    ScheduledTasks
# Function        Set-ClusteredScheduledTask                         1.0.0.0    ScheduledTasks
# Function        Set-ScheduledTask                                  1.0.0.0    ScheduledTasks
# Function        Start-ScheduledTask                                1.0.0.0    ScheduledTasks
# Function        Stop-ScheduledTask                                 1.0.0.0    ScheduledTasks
# Function        Unregister-ClusteredScheduledTask                  1.0.0.0    ScheduledTasks
# Function        Unregister-ScheduledTask                           1.0.0.0    ScheduledTasks

Get-ScheduledTask

Remove-Module ScheduledTasks
Get-Module


-Import-Module -Name ScheduledTasks -Force


Find-Module -Name AzureAD

# Version              Name                                Repository           Description
# -------              ----                                ----------           -----------
# 2.0.2.182            AzureAD                             PSGallery            Azure Active Directory V2 General Availability Module.…

Install-Module -Name AzureAD
# Uninstall-Module -Name AzureAD
Import-Module -Name AzureAD
Get-Module 

# ModuleType Version    PreRelease Name                                ExportedCommands
# ---------- -------    ---------- ----                                ----------------
# Binary     2.0.2.182             AzureAD                             {Add-AzureADApplicationOwner, Add-AzureADDeviceRegisteredOwner, Add-AzureADDeviceRegisteredUser, Add-AzureADDirectoryRoleMember…}
# Manifest   7.0.0.0               Microsoft.PowerShell.Management     {Add-Content, Clear-Content, Clear-Item, Clear-ItemProperty…}
# Manifest   7.0.0.0               Microsoft.PowerShell.Security       {ConvertFrom-SecureString, ConvertTo-SecureString, Get-Acl, Get-AuthenticodeSignature…}
# Manifest   7.0.0.0               Microsoft.PowerShell.Utility        {Add-Member, Add-Type, Clear-Variable, Compare-Object…}
# Script     1.4.8.1               PackageManagement                   {Find-Package, Find-PackageProvider, Get-Package, Get-PackageProvider…}
# Script     0.2.0                 PowerShellEditorServices.Commands   {Clear-Host, ConvertFrom-ScriptExtent, ConvertTo-ScriptExtent, Find-Ast…}
# Script     2.2.5                 PowerShellGet                       {Find-Command, Find-DscResource, Find-Module, Find-RoleCapability…}
# Script     2.4.0      beta0      PSReadLine                          {Get-PSReadLineKeyHandler, Get-PSReadLineOption, Remove-PSReadLineKeyHandler, Set-PSReadLineKeyHandler…}
# Manifest   1.0.0.0               ScheduledTasks                      {Disable-ScheduledTask, Enable-ScheduledTask, Export-ScheduledTask, Get-ClusteredScheduledTask…}


#https://www.powershellgallery.com/