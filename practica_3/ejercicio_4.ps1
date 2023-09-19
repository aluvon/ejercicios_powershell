Clear-Host
Write-Host "Con este script te pediré dos numeros, luego te preguntaré que operación quieres que realice entre ambos."
[double]$num1 = Read-Host "Ingresa el primer número entero"
[double]$num2 = Read-Host "Ingresa el segundo número entero"
Write-Host "Elije una opción:"
Write-Host "`n"
Write-Host "SUMA=A, RESTA=B, DIVISIÓN=C, MULTIPLICACIÓN=D, SALIR=E"
Write-Host "`n"
$valores = Read-Host "Ingresa la opción deseada"
Write-Host "`n"
switch ($valores) {
   A {Write-Host "El resultado de tu suma es:"($num1 + $num2)}
   B {Write-Host "El resultado de tu resta es:"($num1 - $num2)}
   C {Write-Host "El resultado de tu multiplicación es:"($num1 / $num2)}
   D {Write-Host "El resultado de tu división es:"($num1 * $num2)}
   E {Write-Host "Salir."}
   default {Write-Host "Opción incorrecta."}
}
Write-Host "`n"
Write-Host "Fin del script."