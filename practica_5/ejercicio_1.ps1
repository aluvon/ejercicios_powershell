#Funciones a utilizar en la calculadora
Function Sumar {
    param (
        [int]$num1,
        [int]$num2
    )
    $sumar = $num1 + $num2
    Write-Host "El resultado de tu suma es: $sumar"
    }
Function Restar {
    param (
        [int]$num1,
        [int]$num2
    )
    $resta = $num1 - $num2
    Write-Host "El resultado de tu suma es: $resta"
    }
Function Multiplicar {
    param (
        [int]$num1,
        [int]$num2
    )
    $multi = $num1 * $num2
    Write-Host "El resultado de tu suma es: $multi"
    }
Function Division {
    param (
        [int]$num1,
        [int]$num2
    )
    $div =$num1 / $num2
    Write-Host "El resultado de tu suma es: $div"
    }
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
   A {Sumar $num1  $num2}
   B {Restar $num1  $num2}
   C {multiplicar $num1  $num2}
   D {Division $num1  $num2}
   E {Write-Host "Salir."}
   default {Write-Host "Opción incorrecta."}
}
Write-Host "`n"
Write-Host "Fin del script."