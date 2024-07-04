$edgeCachePath = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Cache"

if (Test-Path $edgeCachePath) {
    Remove-Item -Path "$edgeCachePath\*" -Recurse -Force
    Write-Output "Edge cache cleared successfully"
} else {
    Write-Output "Edge cache path not found"
}