proc custom_error_message {message} {
    error "This is an error"
}

proc handle_error {script} {
    switch [catch $script result options] {
        0 { return "success" }
        1 {
            switch -regexp -- [dict get $options "-errorcode"] {
                {POSIX ENOENT} {
                    return "file does not exist"
                }
                {ARITH DIVZERO} {
                    return "division by zero"
                }
                {TCL LOOKUP COMMAND} {
                    return "proc does not exist"
                }
                default {
                    return [dict get $options "-errorcode"]
                }
            }
        }
        default {
            return "something goes wrong"
        }
    }
}
