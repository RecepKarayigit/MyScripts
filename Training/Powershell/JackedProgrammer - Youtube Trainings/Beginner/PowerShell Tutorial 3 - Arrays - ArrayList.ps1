Set-StrictMode -Version Latest

#############################    Array   ############################# 

$Names=@('Bob','Steve','John')

$Names.GetType()
<#
PS C:\Windows\system32> $Names.GetType()

IsPublic IsSerial Name                                     BaseType                                                                                                                                                                  
-------- -------- ----                                     --------                                                                                                                                                                  
True     True     Object[]                                 System.Array
 #>


$Names.IsFixedSize # Returns True


$Names

# PS C:\Windows\system32> $Names
# Bob
# Steve
# John

$Names[0] # Bob
$Names[1] # Steve
$Names[2] # John


$Names.Count # 3
$Names.Length # 3

$Names= $Names + 'Paul'

$Names
<#
PS C:\Windows\system32> $Names
Bob
Steve
John
Paul
 #>

$Names[3] #Paul

$Names[4] #It raises error since Set-StrictMode set to -Version Latest
<#
PS C:\Windows\system32> $Names[4]
Index was outside the bounds of the array.
At line:1 char:1
+ $Names[4]
+ ~~~~~~~~~
    + CategoryInfo          : OperationStopped: (:) [], IndexOutOfRangeException
    + FullyQualifiedErrorId : System.IndexOutOfRangeException
 #>


$Names += 'Recep'

$Names
<#
PS C:\Windows\system32> $Names
Bob
Steve
John
Paul
Recep
 #>

 $Names += 'John'
 $Names
#  Bob
#  Steve
#  John
#  Paul
#  Recep
#  John
  
$Names= $Names -ne 'John' # If there are more than one John in the array, all will be removed.

$Names
<#
PS C:\Windows\system32> $Names
Bob
Steve
Paul
Recep
 #>

$Names.Add('NewItem') #MethodInvocationException: Exception calling "Add" with "1" argument(s): "Collection was of a fixed size."

 $Names.Remove(0) # Raise error :  "Collection was of a fixed size."
 $Names.RemoveAt(1) # Raise error :  "Collection was of a fixed size."
  
#############################    ArrayList    ############################# 

$NameList = [System.Collections.ArrayList]@('Bob','John','Tim') # Bad practice to create an array since the given list is gonna cast into arraylist which is additional operation
$NameList = New-Object -TypeName System.Collections.ArrayList # Best practice to create an arraylist
$NameList.AddRange(@('Bob','John','Tim'))

$NameList.GetType()
<#
PS C:\Windows\system32> $NameList.GetType()

IsPublic IsSerial Name                                     BaseType                                                                                                                                                                  
-------- -------- ----                                     --------                                                                                                                                                                  
True     True     ArrayList                                System.Object        
#>

t

$NameList.IsFixedSize
<#
PS C:\Windows\system32> $NameList.IsFixedSize
False
#>

$NameList
<#
PS C:\Windows\system32> $NameList
Bob
John
Tim
#>

$NameList[0] #Bob
$NameList[1] #John
$NameList[2] #Tim
$NameList[3] #It raises error since Set-StrictMode set to -Version Latest
<#
Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
At line:1 char:1
+ $NameList[3]
+ ~~~~~~~~~~~~
    + CategoryInfo          : OperationStopped: (:) [], ArgumentOutOfRangeException
    + FullyQualifiedErrorId : System.ArgumentOutOfRangeException
#>

#Add method returns the index which add it at.
$NameList.Add('Mike')  #3 #It returns the index number of inserted object
[void]$NameList.Add('Steve') #4  -> void keyword might used for hide the output

$NameList
<#
PS C:\Windows\system32> $NameList
Bob
John
Tim
Mike
Steve
#>

$NameList.Remove('Tim')

$NameList.RemoveAt(0)

$NameList
<#
PS C:\Windows\system32> $NameList
John
Mike
Steve
#>

$NameList.RemoveRange(0,2)

$NameList
# Steve

#############################    Array vs ArrayList Performance    ############################# 
$Array=@()
$ArrayList=[System.Collections.ArrayList]@()

Measure-Command -Expression {@(0..50000).ForEach({$Array+=$_})}

<#
PS C:\Windows\system32> Measure-Command -Expression {@(0..50000).ForEach({$Array+=$_})}


Days              : 0
Hours             : 0
Minutes           : 0
Seconds           : 39
Milliseconds      : 433
Ticks             : 394334585
TotalDays         : 0.000456405769675926
TotalHours        : 0.0109537384722222
TotalMinutes      : 0.657224308333333
TotalSeconds      : 39.4334585
TotalMilliseconds : 39433.4585

#>

################################################################################################## 

Measure-Command -Expression {@(0..50000).ForEach({$ArrayList.Add($_)})}

<#
PS C:\Windows\system32> Measure-Command -Expression {@(0..50000).ForEach({$ArrayList.Add($_)})}


Days              : 0
Hours             : 0
Minutes           : 0
Seconds           : 0
Milliseconds      : 133
Ticks             : 1338239
TotalDays         : 1.54888773148148E-06
TotalHours        : 3.71733055555556E-05
TotalMinutes      : 0.00223039833333333
TotalSeconds      : 0.1338239
TotalMilliseconds : 133.8239
#>

################################################################################################## 

$arrayList=New-Object -TypeName System.Collections.ArrayList
Measure-Command -Expression {$arrayList.AddRange(@(0..50000))}

# Days              : 0
# Hours             : 0
# Minutes           : 0
# Seconds           : 0
# Milliseconds      : 4
# Ticks             : 47902
# TotalDays         : 5.54421296296296E-08
# TotalHours        : 1.33061111111111E-06
# TotalMinutes      : 7.98366666666667E-05
# TotalSeconds      : 0.0047902
# TotalMilliseconds : 4.7902s