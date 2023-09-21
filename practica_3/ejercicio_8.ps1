Clear-Host
Write-Host "En en grupo A están las mujeres anterior a la letra N."
Write-Host "En en grupo A están los hombres posterior a la letra N."
Write-Host "En en grupo B eL resto de las personas."
Write-Host "`n"
$sexo = Read-Host "Escribe tu sexo: mujer=F, hombre=M"
$nombre = Read-Host "Escribe tu nombre"

if (($sexo -ieq "F") -and ($nombre -lt "n*")) {
        Write-Host "Perteneces al grupo A"
}
Elseif (($sexo -ieq "M") -and ($nombre -gt "n*")) {
        Write-Host "Perteneces al grupo A"
}
Elseif (($sexo -ieq "F") -and ($nombre -gt "n*")) {
        Write-Host "Perteneces al grupo B"
}
Elseif (($sexo -ieq "M") -and ($nombre -lt "n*")) {
        Write-Host "Perteneces al grupo B"
}
Else {
        Write-Host "No te encuentro en mi base de datos."
}