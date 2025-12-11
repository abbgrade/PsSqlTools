Join-Path $PSScriptRoot .. | Push-Location
Invoke-Build -Task Test.PsSqlClient.ex.Azure
