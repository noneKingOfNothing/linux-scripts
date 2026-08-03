#!/bin/bash

# sysinfo_page - A script to produce an HTML file displaying system information

#### Variable declaration - UPPER CASE are constants, lower case are variables 

TITLE="System Information for"
RIGHT_NOW="$(date +"%x %r %Z")"
TIME_STAMP="$RIGHT_NOW by $USER"

#### Functions

system_info()
{
    echo "<h2>System Release Information:</h2>"
    echo "<p>Function Coming Soon</p>
}

show_uptime()
{
    echo "<h2>System Uptime</h2>"
    echo "<pre>"
    uptime
    echo "</pre>"
}

drive_space()
{
    echo "<h2>Filesystem space:</h2>"
    echo "<pre>"
    df
    echo "</pre>"
}

home_space()
{
    echo "<h2>Home Directory Space by User:</h2>"
    echo "<pre>"
    echo "Bytes Directory"
    du -s /home/* | sort -nr
    echo "</pre>"
}

#### Main

cat <<- _EOF_
    <html>
    <head>
        <title>
        $TITLE $HOSTNAME
        </title>
    </head>

    <body>
    <h1>$TITLE $HOSTNAME</h1>
    <p>Updated on $TIME_STAMP</p>
    $(system_info)
    $(show_uptime)
    $(drive_space)
    $(home_space)
    </body>
    </html>
_EOF_
