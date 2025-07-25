#!/usr/bin/tclsh

package require Tclx

proc runCommand {} {
    puts [exec make compile]
    return [open |[list python3 -m http.server -d build >@stdout 2>@stderr] w]
}

while {true} {
    set pid [pid [runCommand]]

    set status [exec inotifywait -e modify -e modify -e move -e create -e delete -q -r src include]

    # kill bg process and restart
    kill 9 $pid
    wait $pid
}