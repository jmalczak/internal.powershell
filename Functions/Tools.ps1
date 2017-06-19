$ErrorActionPreference = "Stop";

function malczu-help() {
    Get-Command -Module MalczuModule;
}

function rmr {
    rm $args -Recurse -Force
}

function rsql {
    Start-Service "MSSQLServer"
}

function wifi {
    netsh wlan start hostednetwork
}

function grepft($wildcard, $path, $fileTypes) {
    ag --silent -U -i -G "$fileTypes" "$wildcard" $path
}

function grep($wildcard, $path) {
    ag --silent -U -i "$wildcard" $path
}
