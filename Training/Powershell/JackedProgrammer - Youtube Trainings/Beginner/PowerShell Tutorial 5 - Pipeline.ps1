Set-StrictMode -Version latest

Get-Service #Shows all services

# ---------------------------------------------------

Get-Service -Name Spooler

# Status   Name               DisplayName                           
# ------   ----               -----------                           
# Running  Spooler            Print Spooler          

# ---------------------------------------------------

$ServiceName='Spooler'

Get-Service -Name $ServiceName

# ---------------------------------------------------

# For a cmdlet to be usable in a pipeline, the -InputObject parameter needs to support pipeline input.
Get-Help Stop-Service -Full 

# NAME
#     Stop-Service

# SYNTAX
#     Stop-Service [-InputObject] <ServiceController[]> [-Force] [-NoWait] [-PassThru] [-Include <string[]>] [-Exclude <string[]>] [-WhatIf] [-Confirm] [<CommonParameters>]

#     Stop-Service [-Name] <string[]> [-Force] [-NoWait] [-PassThru] [-Include <string[]>] [-Exclude <string[]>] [-WhatIf] [-Confirm] [<CommonParameters>]

#     Stop-Service -DisplayName <string[]> [-Force] [-NoWait] [-PassThru] [-Include <string[]>] [-Exclude <string[]>] [-WhatIf] [-Confirm] [<CommonParameters>]


# PARAMETERS
#     -Confirm

#         Required?                    false
#         Position?                    Named
#         Accept pipeline input?       false
#         Parameter set name           (All)
#         Aliases                      cf
#         Dynamic?                     false
#         Accept wildcard characters?  false

#     -DisplayName <string[]>

#         Required?                    true
#         Position?                    Named
#         Accept pipeline input?       false
#         Parameter set name           DisplayName
#         Aliases                      None
#         Dynamic?                     false
#         Accept wildcard characters?  false

#     -Exclude <string[]>

#         Required?                    false
#         Position?                    Named
#         Accept pipeline input?       false
#         Parameter set name           (All)
#         Aliases                      None
#         Dynamic?                     false
#         Accept wildcard characters?  false

#     -Force

#         Required?                    false
#         Position?                    Named
#         Accept pipeline input?       false
#         Parameter set name           (All)
#         Aliases                      None
#         Dynamic?                     false
#         Accept wildcard characters?  false

#     -Include <string[]>

#         Required?                    false
#         Position?                    Named
#         Accept pipeline input?       false
#         Parameter set name           (All)
#         Aliases                      None
#         Dynamic?                     false
#         Accept wildcard characters?  false

#     -InputObject <ServiceController[]>

#         Required?                    true
#         Position?                    0
#         Accept pipeline input?       true (ByValue)
#         Parameter set name           InputObject
#         Aliases                      None
#         Dynamic?                     false
#         Accept wildcard characters?  false

#     -Name <string[]>

#         Required?                    true
#         Position?                    0
#         Accept pipeline input?       true (ByValue, ByPropertyName)              # --> This feature needs to be supported by cmdlet
#         Parameter set name           Default
#         Aliases                      ServiceName
#         Dynamic?                     false
#         Accept wildcard characters?  false

#     -NoWait

#         Required?                    false
#         Position?                    Named
#         Accept pipeline input?       false
#         Parameter set name           (All)
#         Aliases                      None
#         Dynamic?                     false
#         Accept wildcard characters?  false

#     -PassThru

#         Required?                    false
#         Position?                    Named
#         Accept pipeline input?       false
#         Parameter set name           (All)
#         Aliases                      None
#         Dynamic?                     false
#         Accept wildcard characters?  false

#     -WhatIf

#         Required?                    false
#         Position?                    Named
#         Accept pipeline input?       false
#         Parameter set name           (All)
#         Aliases                      wi
#         Dynamic?                     false
#         Accept wildcard characters?  false

#     <CommonParameters>
#         This cmdlet supports the common parameters: Verbose, Debug,
#         ErrorAction, ErrorVariable, WarningAction, WarningVariable,
#         OutBuffer, PipelineVariable, and OutVariable. For more information, see
#         about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216).


# INPUTS
#     System.String[]
#     System.ServiceProcess.ServiceController[]


# OUTPUTS
#     System.ServiceProcess.ServiceController


# ALIASES
#     spsv


# REMARKS
#     Get-Help cannot find the Help files for this cmdlet on this computer. It is displaying only partial help.
#         -- To download and install Help files for the module that includes this cmdlet, use Update-Help.
#         -- To view the Help topic for this cmdlet online, type: "Get-Help Stop-Service -Online" or
#            go to https://go.microsoft.com/fwlink/?LinkID=2097052.



# ---------------------------------------------------

Stop-Service -Name $ServiceName

Get-Service -Name $ServiceName

# Status   Name               DisplayName                           
# ------   ----               -----------                           
# Stopped  Spooler            Print Spooler                         

# ---------------------------------------------------

Get-Service -Name $ServiceName | Start-Service

Get-Service -Name $ServiceName

# Status   Name               DisplayName                           
# ------   ----               -----------                           
# Running  Spooler            Print Spooler          

# ---------------------------------------------------

# $Services=[System.Collections.ArrayList]@('Spooler','W32Time')
$Services= New-Object -TypeName System.Collections.ArrayList
$Services.Add('Spooler')
$Services.Add('W32Time')

$Services

# Spooler
# W32Time

# ---------------------------------------------------

$Services | Get-Service

# Status   Name               DisplayName                           
# ------   ----               -----------                           
# Running  Spooler            Print Spooler                         
# Running  W32Time            Windows Time    

# ---------------------------------------------------

$Services | Get-Service | Stop-Service

$Services | Get-Service

# Status   Name               DisplayName                           
# ------   ----               -----------                           
# Stopped  Spooler            Print Spooler                         
# Stopped  W32Time            Windows Time        

$Services | Get-Service | Start-Service

$Services | Get-Service  

# Status   Name               DisplayName                           
# ------   ----               -----------                           
# Running  Spooler            Print Spooler                         
# Running  W32Time            Windows Time                          
   
# ---------------------------------------------------

$Services | Get-Service | ForEach-Object{Write-Output "Service : $($_.DisplayName) is currently $($_.Status)"}

# Service : Print Spooler is currently Running
# Service : Windows Time is currently Running

# ---------------------------------------------------

Get-Help -name Get-Service -Full

$ServiceObj=New-Object -TypeName PSCustomObject

Add-Member -InputObject $ServiceObj -MemberType NoteProperty -Name 'Name' -Value 'Spooler'
Add-Member -InputObject $ServiceObj -MemberType NoteProperty -Name 'ComputerName' -Value 'RTK-XXX-XXXX'


$ServiceObj | Get-Service

# Status   Name               DisplayName                           
# ------   ----               -----------                           
# Running  Spooler            Print Spooler  