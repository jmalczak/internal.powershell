function global:prompt {
    $realLASTEXITCODE = $LASTEXITCODE

    if ($env:ConEmuBaseDir -ne $null) {
      & ConEmuC.exe -StoreCWD "$dir"
    }

    Write-Host(&date -Format "dd MMMM yyyy hh:mm:ss") -nonewline -ForegroundColor Magenta
    Write-Host(" :: ") -nonewline
    Write-Host(&hostname) -ForegroundColor Green

    Write-Host("{ ") -nonewline
    Write-Host($pwd.ProviderPath) -nonewline
    Write-Host(" }") -nonewline

    # Reset color, which can be messed up by Enable-GitColors

    Write-VcsStatus

    $global:LASTEXITCODE = $realLASTEXITCODE
    Write-Host("")
    Write-Host("~>") -nonewline -ForegroundColor Green
    return " "
}
