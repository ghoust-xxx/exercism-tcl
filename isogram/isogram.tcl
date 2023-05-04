proc isIsogram {input} {
    set input [string tolower $input]
    foreach char [split $input ""] {
        if ![string is alpha $char] {
            continue
        }
        if [info exists chars($char)] {
            return false
        }
        set chars($char) 1
    }

    return true
}
