# Not sure if this works yet ﻿
Import-Module ImportExcel

$excelFilePath = "C:\Test\Passwords.xlsx"

$sheetPassword = "IForgetFarTooOften"

$passwords = @(
    [PSCustomObject]@{Website = "Amazon.com"; Username = "BMacVeigh"; Password = "password1"},
    [PSCustomObject]@{Website = "Gmail.com"; Username = "BWatkins2"; Password = "password2"}
)

$passwords | Export-Excel -Path $excelFilePath -WorkSheetname "Passwords" -AutoSize -Password $sheetPassword

Write-Host "Passwords have been saved and the sheet is protected."
