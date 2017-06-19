$Global:V = "$rootPath\..\internal\internal.vim";

function v() {
    cd $V;
}

function vimgc() {
    if(test-path $V\_vimrc) {
        rm $V\_vimrc
    }

    if(test-path $V\_vsvimrc) {
        rm $V\_vsvimrc
    }


    cp $V\base.vim $V\_vimrc
    cp $V\base.vim $V\_vsvimrc

    Get-ChildItem $V\configuration\ -Recurse -File | 
    Where-Object { $_.FullName -notlike "*vsonly*" } | 
    Sort-Object | ForEach-Object {  Get-Content $_.FullName | Add-Content $V\_vimrc }

    Get-ChildItem $V\configuration\ -Recurse -File | 
    Where-Object { $_.FullName -notlike "*vimonly*" } | 
    Sort-Object | ForEach-Object {  Get-Content $_.FullName | Add-Content $V\_vsvimrc }
}

function vrc() {
    vim $V\configuration\;
    vimgc
}
