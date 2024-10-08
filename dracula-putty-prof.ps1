# Generate HKU path with SID of current user
$regpath = 'HKEY_USERS\' + $(whoami /user | findstr S-1 | % { $_.Split(" ") | Select -last 1 }) + '\Software\SimonTatham\PuTTY\Sessions\Dracula'

# Creating New-Item to define colours with
New-Item -Path Registry::$regpath -Force | Out-Null

# Define colours
Set-ItemProperty -Path Registry::$regpath -Name 'Colour0' -Value '248,248,242'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour1' -Value '248,248,242'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour2' -Value '40,42,54'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour3' -Value '40,42,54'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour4' -Value '248,248,242'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour5' -Value '98,114,164'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour6' -Value '68,71,90'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour7' -Value '40,42,54'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour8' -Value '255,85,85'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour9' -Value '255,109,102'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour10' -Value '80,250,123'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour11' -Value '90,247,142'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour12' -Value '241,250,140'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour13' -Value '244,249,157'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour14' -Value '202,169,250'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour15' -Value '202,169,250'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour16' -Value '255,121,198'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour17' -Value '255,146,208'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour18' -Value '139,233,253'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour19' -Value '154,237,254'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour20' -Value '248,248,242'
Set-ItemProperty -Path Registry::$regpath -Name 'Colour21' -Value '255,255,255'
