
#region Build & Import

task Test.Import.PsSqlClient -Jobs {
    Join-Path $PSScriptRoot .. .\PsSqlClient | Push-Location
    Invoke-Build Import
}

task Test.Import.PsSmo -Jobs {
    Join-Path $PSScriptRoot .. .\PsSmo | Push-Location
    Invoke-Build Import
}

task Test.Import.PsDac -Jobs {
    Join-Path $PSScriptRoot .. .\PsDac | Push-Location
    Invoke-Build Import
}

#endregion
#region Tests

task Test.PsSmo -Jobs Test.Import.PsSqlClient, Test.Import.PsSmo, {
    Join-Path $PSScriptRoot .. PsSmo test | Push-Location
    Invoke-Pester
}

task Test.PsDac -Jobs Test.Import.PsSqlClient, Test.Import.PsSmo, Test.Import.PsDac, {
    Join-Path $PSScriptRoot .. PsDac test | Push-Location
    Invoke-Pester
}

task Test.PsDac.ex.Azure -Jobs Test.Import.PsSqlClient, Test.Import.PsSmo, Test.Import.PsDac, {
    Join-Path $PSScriptRoot .. PsDac test | Push-Location
    Invoke-Pester -Configuration @{ Filter = @{ ExcludeTag = 'AzureSql' }}
}

#endregion
