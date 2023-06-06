$softwareName = "软件名称"

# 获取安装在计算机上的所有软件列表
$softwareList = Get-WmiObject -Class Win32_Product | Select-Object -Property Name

# 统计指定软件名称的安装数量
$installedCount = ($softwareList | Where-Object { $_.Name -eq $softwareName }).Count

# 输出结果
Write-Host "软件名称: $softwareName"
Write-Host "安装数量: $installedCount"
