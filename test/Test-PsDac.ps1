Join-Path $PSScriptRoot .. | Push-Location
Invoke-Build -Task Test.PsDac
