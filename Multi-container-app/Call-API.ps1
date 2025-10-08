# ===============================
# PowerShell Script: Call API and log response
# ===============================

# Configuration
$apiUrl = "http://localhost:5000/show_api_url"   # Your backend API
$logFile = "C:\Users\rasbe\OneDrive\Desktop\my-docker-compose-app\Multi-container-app\api_log.txt"  # Log file path

# Function to write timestamped log
function Write-Log($message) {
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "$timestamp - $message" | Out-File -FilePath $logFile -Append
}

# Call API
try {
    $response = Invoke-RestMethod -Uri $apiUrl -Method Get
    Write-Log "API Call Successful: $($response | ConvertTo-Json)"
}
catch {
    Write-Log "API Call Failed: $_"
}
