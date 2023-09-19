Clear-Host
Write-Host "Con este script te diré si el primer numero que ingreses es menor,mayor o igual que el otro."
[int]$num1 = Read-Host "Ingresa el primer número entero"
[int]$num2 = Read-Host "Ingresa el segundo número entero"


switch ($num1) {
    {($_ -lt $num2)}  {Write-Host "Tu primer número es MENOR que el segundo número."}
    {($_ -eq $num2)}  {Write-Host "Tu primer número es IGUAL que el segundo número."}
    {($_ -gt $num2)}  {Write-Host "Tu primer número es MAYOR que el segundo número."}
}
Write-Host "`n"
Write-Host "Fin del script."