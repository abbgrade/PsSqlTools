param (
    $BuildNumber
)

$ModuleName = 'PsSqlTools'

. $PSScriptRoot/tasks/Build.Tasks.ps1
. $PSScriptRoot/tasks/PsBuild.Tasks.ps1

task InstallModuleDependencies -Jobs {}
task InstallBuildDependencies -Jobs InstallModuleDependencies, {
    Install-Module platyPs
}
task InstallTestDependencies -Jobs InstallModuleDependencies, {}
task InstallReleaseDependencies -Jobs InstallModuleDependencies, {}

task BuildPsSqlClient -Before Import {
    Invoke-Build -File $PSScriptRoot/PsSqlClient/.build.ps1 -Task Import
}
task BuildPsSmo -Before Import {
    Invoke-Build -File $PSScriptRoot/PsSmo/.build.ps1 -Task Import
}
task BuildPsDac -Before Import {
    Invoke-Build -File $PSScriptRoot/PsDac/.build.ps1 -Task Import
}

task Doc.Update {}
