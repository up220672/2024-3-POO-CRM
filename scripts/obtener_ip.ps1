# Obtener la primera IP IPv4 válida 
$ip = (Get-NetIPAddress | Where-Object { $_.AddressFamily -eq 'IPv4' -and $_.IPAddress -notlike '127.*' -and $_.IPAddress -notlike '169.*' } | Select-Object -First 1 -ExpandProperty IPAddress) 
# Imprimir la IP en consola 
Write-Output "La IP de este equipo es: $ip" 
