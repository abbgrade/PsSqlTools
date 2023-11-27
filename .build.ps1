param (
    $BuildNumber
)

$ModuleName = 'PsSqlTools'

. $PSScriptRoot/tasks/Build.Tasks.ps1
. $PSScriptRoot/tasks/PsBuild.Tasks.ps1

task InstallModuleDependencies -Jobs {
    Install-Module PsSqlClient -AllowPrerelease:( $BuildNumber )
    Install-Module PsSmo -AllowPrerelease:( $BuildNumber )
    Install-Module PsDac -AllowPrerelease:( $BuildNumber )
}
task InstallBuildDependencies -Jobs InstallModuleDependencies, {
    Install-Module platyPs
}
task InstallTestDependencies -Jobs InstallModuleDependencies, {}
task InstallReleaseDependencies -Jobs InstallModuleDependencies, {}

task ImportPsSqlClient -Before Import {
    Invoke-Build -File $PSScriptRoot/PsSqlClient/.build.ps1 -Task Import
}
task ImportPsSmo -Before Import {
    Invoke-Build -File $PSScriptRoot/PsSmo/.build.ps1 -Task Import
}
task ImportPsDac -Before Import {
    Invoke-Build -File $PSScriptRoot/PsDac/.build.ps1 -Task Import
}

task BuildPsSqlClient -Before Build {
    Invoke-Build -File $PSScriptRoot/PsSqlClient/.build.ps1 -Task Build
}
task BuildPsSmo -Before Build {
    Invoke-Build -File $PSScriptRoot/PsSmo/.build.ps1 -Task Build
}
task BuildPsDac -Before Build {
    Invoke-Build -File $PSScriptRoot/PsDac/.build.ps1 -Task Build
}

task Doc.Update {}

# task PrepareSetPrerelease -Before SetPrerelease {
#     $Env:PSModulePath += ":$PSScriptRoot/PsSqlClient/publish"
#     $Env:PSModulePath += ":$PSScriptRoot/PsSmo/publish"
#     $Env:PSModulePath += ":$PSScriptRoot/PsDac/publish"

#     Write-Verbose $Env:PSModulePath
# }
