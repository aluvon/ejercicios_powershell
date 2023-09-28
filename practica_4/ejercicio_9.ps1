Clear-Host
Write-Host "Ingresa una contraseña y verificaré si coincide con la almacenada en la BD."
$ingreso = Read-Host "Ingresa tu contraseña"
Write-Host "`n"

$contraseña = "admin"
while ($ingreso -ine $contraseña)
{
    Write-Host "La contraseña no coincide."
    Write-Host "`n"
    $ingreso = Read-Host "Ingresa tu contraseña"
    Write-Host "`n"
}
Write-Host "La contraseña es correcta."