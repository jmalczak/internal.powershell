function home() {
    cd $HOME;
}

$Global:DOWNLOADS = "$HOME\Downloads";

function downloads() {
    cd $DOWNLOADS;
}

$Global:DESKTOP = "$HOME\Desktop";

function desktop() {
    cd $DESKTOP;
}

$Global:CODE = "$rootPath\..";

function co() {
    cd $CODE;
}

function cd($path) {
    pushd;
    set-location $path;
}

function cd-(){
    popd;
}
