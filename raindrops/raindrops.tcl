proc raindrops {number} {
    set res ""
    if {$number % 3 == 0} { set res "Pling" }
    if {$number % 5 == 0} { set res "${res}Plang" }
    if {$number % 7 == 0} { set res "${res}Plong" }

    if {$res == "" } { return $number }

    return $res
}
