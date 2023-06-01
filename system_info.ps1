# 获取 CPU 信息
$cpu = Get-WmiObject Win32_Processor | Select-Object Name, Manufacturer, MaxClockSpeed, NumberOfCores

# 获取显卡信息
$graphicsCard = Get-WmiObject Win32_VideoController | Select-Object Name, AdapterRAM, DriverVersion

# 获取内存信息
$memory = Get-WmiObject Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum | Select-Object -ExpandProperty Sum

# 格式化并输出结果
Write-Host "CPU Information:"
Write-Host "  Name: $($cpu.Name)"
Write-Host "  Manufacturer: $($cpu.Manufacturer)"
Write-Host "  Max Clock Speed: $($cpu.MaxClockSpeed) MHz"
Write-Host "  Number of Cores: $($cpu.NumberOfCores)"
Write-Host ""

Write-Host "Graphics Card Information:"
Write-Host "  Name: $($graphicsCard.Name)"
Write-Host "  Adapter RAM: $($graphicsCard.AdapterRAM) bytes"
Write-Host "  Driver Version: $($graphicsCard.DriverVersion)"
Write-Host ""

Write-Host "Memory Information:"
Write-Host "  Total Memory: $([math]::Round($memory / 1GB, 2)) GB"
