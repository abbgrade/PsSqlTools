
task Test.Import.PsSqlClient {
    Join-Path $PSScriptRoot .. .\PsSqlClient | Push-Location
    Invoke-Build Import
}

task Test.PsSmo Test.Import.PsSqlClient, {
    Join-Path $PSScriptRoot .. PsSmo test | Push-Location
    Invoke-Pester
}

task Test.PsDac {
    Join-Path $PSScriptRoot .. PsDac test | Push-Location
    Invoke-Pester
}

task Test.PsDac.ex.Azure {
    Join-Path $PSScriptRoot .. PsDac test | Push-Location
    Invoke-Pester -Configuration @{ Filter = @{ ExcludeTag = 'AzureSql' }}
}
