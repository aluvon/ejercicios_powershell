Clear-Host
Write-Host "Con este script te diré si eres menor o mayor de edad."
[int]$edad = Read-Host "Ingresa un edad: "

switch ($edad) {
    {($_ -lt 18)}  {Write-Host "Eres MENOR."}
    {($_ -ge 18)}  {Write-Host "Eres MAYOR."}
}
Write-Host "`n"
Write-Host "Fin del script."
