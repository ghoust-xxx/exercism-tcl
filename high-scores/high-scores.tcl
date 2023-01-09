#! tclsh

oo::class create HighScores {
    variable scores

    constructor {} {
        variable scores
        set scores {}
    }

    method addScores {{args {}}} {
        variable scores
        set scores $args
    }

    method scores {} {
        variable scores
        return $scores
    }

    method latest {} {
        return [lindex $scores end]
    }

    method personalBest {} {
        return [lindex [lsort -integer -decreasing $scores] 0]
    }

    method topThree {} {
        return [lrange [lsort -integer -decreasing $scores] 0 2]
    }
}
