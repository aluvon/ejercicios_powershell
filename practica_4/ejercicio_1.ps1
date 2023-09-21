Clear-Host
$nombre = Read-Host "Ingresa tu nombre"
[int]$numero = Read-Host "Ingresa un número entero"
Write-Host "`n"
[int]$a = $numero

do {
    Write-Host $nombre
    $numero--
}
while ($numero -eq 0) - and ($numero.getType())


#for ($a = $numero; $numero %2 -eq 0; $a++)
#{
#     Write-Host $nombre
#}