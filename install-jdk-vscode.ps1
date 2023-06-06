# This script is encoded in UTF-8
$null = "$([char]0xEF)$([char]0xBB)$([char]0xBF)"

# 获取桌面路径
$desktopPath = [Environment]::GetFolderPath('Desktop')

# 安装JDK
Write-Output "开始安装JDK..." | Tee-Object -FilePath "$desktopPath\install-log.txt"
choco install openjdk -y 2>&1 | Tee-Object -FilePath "$desktopPath\install-log.txt" -Append

# 安装VS Code
Write-Output "开始安装VS Code..." | Tee-Object -FilePath "$desktopPath\install-log.txt" -Append
choco install vscode -y 2>&1 | Tee-Object -FilePath "$desktopPath\install-log.txt" -Append

Write-Output "安装完成!日志已保存在桌面的install-log.txt文件中."
