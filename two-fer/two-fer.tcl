proc two-fer {{name ""}} {
    if {$name ne ""} {
        return "One for $name, one for me."
    }

    return "One for you, one for me."
}
