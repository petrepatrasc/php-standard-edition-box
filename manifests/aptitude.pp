#################################
#  Aptitude commands, pre-boot  #
#################################

exec { "apt-update":
    command => "/usr/bin/apt-get update"
}

# Make sure that apt-update has been called before any package installations
Exec["apt-update"] -> Package <| |>