namespace eval resistorColor {
    proc colorCode {args} {
        set colors "black brown red orange yellow green blue violet grey white"
        set color [lindex $args 0]
        set res [lsearch -exact $colors $color]
        if {$res >= 0} {
            return $res
        }
        return -code error "Invalid color: $color"
    }

    proc colors {args} {
#        throw {NOT_IMPLEMENTED} "Implement this procedure."
        set colors "black brown red orange yellow green blue violet grey white"
        return $colors
    }
}
