$attempt = 1
$serviceName = '.NET6 Test'
while($true)
{
    Write-Host "Service restart attempt: $attempt"
    Stop-Service -Name $serviceName
    Start-Sleep -s 1
    Start-Service -Name $serviceName
    Start-Sleep -s 2
    $attempt = $attempt + 1
}
