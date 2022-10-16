$folderNamesToCreate = New-Object System.Collections.Generic.HashSet[string]

Get-ChildItem . -Attributes !Directory |

Foreach-Object {
    $folderNamesToCreate.Add($_.Name.split(".")[0])
}

# loop to create folders
foreach ($name in $folderNamesToCreate){
    New-Item -Path $name -ItemType Directory
}

Get-ChildItem . -Attributes !Directory |

Foreach-Object {
    $fileName = $_.Name
    $folderName = $fileName.split(".")[0]
    Write-Output "Moving file: " + $fileName "into this folder: " + $folderName

    Move-Item $_.Name -Destination $folderName
}