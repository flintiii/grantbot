#!/usr/bin/expect -f
set tiddleurl [lindex $argv 0]
set user      [lindex $argv 1]
set pass      [lindex $argv 2]
set proj      [lindex $argv 3]
spawn /usr/bin/cadaver http://$tiddleurl/
expect "Username:"
send "$user\n"
expect "Password:"
send "$pass\n"
expect "dav:"
send "copy ZiddlyWiki $proj\n"
expect "dav:"
send "quit\n"

