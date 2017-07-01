function home() {
    cd $HOME;
}

function downloads() {
    cd "$HOME\Downloads";
}

function desktop() {
    cd "$HOME\Desktop";
}

function code() {
    cd "$rootPath\..";
}

function katon() {
    cd "$rootPath\..\katon";
}

function chilli() {
    cd "$rootPath\..\chilli";
}

function internal() {
    cd "$rootPath\..\internal";
}

function cd($path) {
    pushd;
    set-location $path;
}

function cd-(){
    popd;
}
