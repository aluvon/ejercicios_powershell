Clear-Host
Write-host "Hola bienvenido/a, a continuación te pediré que ingreses dos números." 
[int]$entrada1 = Read-Host "Ingresa un número"
[int]$entrada2 = Read-Host "Ingresa otro número"
[int]$suma=$entrada1+$entrada2
[int]$resta=$entrada1-$entrada2
[double]$div=$entrada1/$entrada2
[int]$multi=$entrada1*$entrada2
Write-host "Ahora realizaré unas operaciones aritméticas con los dos números que has ingresado."
Write-host "La suma es: " $suma
Write-host "La resta es: " $resta
Write-host "La división es: " $div
Write-host "La multiplicación es: " $multi