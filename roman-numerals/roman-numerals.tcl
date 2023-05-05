array set nums {
    0 ""
    1 "I"
    2 "II"
    3 "III"
    4 "IV"
    5 "V"
    6 "VI"
    7 "VII"
    8 "VIII"
    9 "IX"
}

array set tens {
    0 ""
    1 "X"
    2 "XX"
    3 "XXX"
    4 "XL"
    5 "L"
    6 "LX"
    7 "LXX"
    8 "LXXX"
    9 "XC"
}

array set hunds {
    0 ""
    1 "C"
    2 "CC"
    3 "CCC"
    4 "CD"
    5 "D"
    6 "DC"
    7 "DCC"
    8 "DCCC"
    9 "CM"
}

array set thou {
    0 ""
    1 "M"
    2 "MM"
    3 "MMM"
}

proc toroman {n} {
    global nums tens hunds thou

    set res $nums([expr $n % 10])
    set n [expr $n / 10]
    if {$n == 0} { return $res }

    set res $tens([expr $n % 10])${res}
    set n [expr $n / 10]
    if {$n == 0} { return $res }

    set res $hunds([expr $n % 10])${res}
    set n [expr $n / 10]
    if {$n == 0} { return $res }

    set res $thou([expr $n % 10])${res}
    set n [expr $n / 10]

    return $res
}
