# Set the source and destination folders
$source = "C:\source\folder"
$destination = "C:\destination\folder"

# Get all files in the source folder
$files = Get-ChildItem $source

# Loop through each file
foreach ($file in $files)
{
    # Construct the full path to the file
    $sourcePath = Join-Path $source $file

    # Construct the full path to the destination file
    $destinationPath = Join-Path $destination $file

    # Move the file to the destination folder
    Move-Item -Path $sourcePath -Destination $destinationPath
}