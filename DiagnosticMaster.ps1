# Get All of Windows Updates
	Set-ExecutionPolicy RemoteSigned ; 
	Install-Module PSWindowsUpdate ; 
	Get-WindowsUpdate -AcceptAll -Install ; 

# Get Host Name
	Hostname | Out-File -FilePath "C:\Temp\DiagnosticsMaster.txt" ; 

# Get PC Manufacturer, Serial Number, BIOS #
	Get-CimInstance Win32_BIOS | Out-File -append -FilePath "C:\Temp\DiagnosticsMaster.txt" ; 

# IP Information
	Get-NetIPAddress | Out-File -append -FilePath "C:\Temp\DiagnosticsMaster.txt" ; 

# Operating System Information
	Get-CimInstance Win32_OperatingSystem | Out-File -append -FilePath "C:\Temp\DiagnosticsMaster.txt" ; 

# Battery Information
	Get-CimInstance Win32_Battery | Out-File -append -FilePath "C:\Temp\DiagnosticsMaster.txt" ; 

# Get Status of and Update Microsoft's Antivirus
	Get-MpComputerstatus | Out-File -append -FilePath "C:\Temp\DiagnosticsMaster.txt" ; 
	Update-MpSignature ; 

#Run Microsoft's Antivirus 
	Start-MpScan -ScanType FullScan -AsJob ; 

#Disk Cleaner
	cleanmgr /verylowdisk ; 
	cleanmgr /AUTOCLEAN ; 

#Disc Defragment
	Optimize-Volume -DriveLetter C -Defrag -Verbose ; 
	Start-MpScan -ScanType QuickScan -ScanPath C ; 



