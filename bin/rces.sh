#!/usr/bin/expect -f
spawn /usr/bin/cadaver http://docbox.flint.com:1980/
expect "Username:"
send "the\n"
expect "Password:"
send "end\n"
expect "dav:"
send "rmcol 2test\n"
expect "dav:"
send "quit\n"
