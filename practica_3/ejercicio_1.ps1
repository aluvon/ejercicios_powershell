Clear-Host
Write-Host "Con este script te diré si un número es PAR o IMPAR"
$ingreso = Read-Host "Ingresa un número: "
if ($ingreso %2 -eq 0) {
    Write-Host "Tu número es ¡¡ PAR !!"
}
Else {
    Write-Host "Tu número es ¡¡ IMPAR !!"  
}
Write-Host "`n"
Write-Host "Fin del script."