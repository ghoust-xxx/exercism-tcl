proc abbreviate {phrase} {
    set abbr ""
    regsub -all {[^[:alnum:]\- ]} $phrase {} cleaned
    foreach word [split $cleaned " -"] {
        append abbr [string index $word 0]
    }
    return [string toupper $abbr]
}
