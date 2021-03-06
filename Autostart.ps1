# Variables
$Global:codePath = $PSScriptRoot;
$codePath = $PSScriptRoot;
$rootPath = "$codePath\..\"
$Global:isPowershell = "true"

Import-Module "$codePath\MalczuModule.psm1" -Global -DisableNameChecking

$currentHost = Get-Host

if($currentHost.Name -eq "ConsoleHost")
{
    Import-Module PSReadLine
}

# Remove alias so we can use pushd before cd
remove-item Alias:\cd -Force;
cls
