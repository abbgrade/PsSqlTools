
task Test.ImportPsSqlClient {
    Join-Path $PSScriptRoot .. .\PsSqlClient | Push-Location
    Invoke-Build Import
}

task Test.PsSmo Test.ImportPsSqlClient, {
    Join-Path $PSScriptRoot .. PsSmo test | Push-Location
    Invoke-Pester
}

