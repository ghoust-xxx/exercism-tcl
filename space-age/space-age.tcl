proc onEarth {n} {
    return [expr $n / 31557600.0]
}
proc onMercury {n} {
    return [expr $n / 31557600.0 / 0.2408467]
}
proc onVenus {n} {
    return [expr $n / 31557600.0 / 0.61519726]
}

proc onMars {n} {
    return [expr $n / 31557600.0 / 1.8808158]
}

proc onJupiter {n} {
    return [expr $n / 31557600.0 / 11.862615]
}

proc onSaturn {n} {
    return [expr $n / 31557600.0 / 29.447498]
}

proc onUranus {n} {
    return [expr $n / 31557600.0 / 84.016846]
}

proc onNeptune {n} {
    return [expr $n / 31557600.0 / 164.79132]
}

proc onSun {n} {
    error "not a planet"
}

# extra credit: generate the procedures programmatically
