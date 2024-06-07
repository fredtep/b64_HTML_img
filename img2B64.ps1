Get-ChildItem -Path .\images\* -File | ForEach-Object {
    $file = $_.FullName
    if ($file -match "\.png$" -or $file -match "\.jpg$" -or $file -match "\.jpeg$") {
        Write-Host $file
        $TEMP = [Convert]::ToBase64String([IO.File]::ReadAllBytes($file))
        $outputFile = "$file.txt"
        $imgTag = "<img alt=`"Embedded Image`" src=`"data:image/png;base64,$TEMP`" />"
        $imgTag | Out-File -FilePath $outputFile
    }
}