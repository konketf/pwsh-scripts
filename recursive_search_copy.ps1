# Prompt the user for the source folder and the destination folder
$source = Read-Host "Enter the path of the source folder"
$destination = Read-Host "Enter the path of the destination folder"

# Get a list of all the files in the source folder and its subfolders
$files = Get-ChildItem $source -File -Recurse

# Iterate through each file and copy it to the destination folder if it does not already exist
ForEach ($file in $files) {
    $destinationPath = Join-Path $destination $file.Name
    if (!(Test-Path $destinationPath)) {
        Copy-Item -Path $file.FullName -Destination $destination
    }
}

# Output a message to the user indicating that the files have been copied
Write-Output "All files have been copied to the destination folder."