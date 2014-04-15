############################################
#  Generic environment tools and packages  #
############################################

$tools = [ "curl", "libcurl3", "vim", "git", "git-core" ]

package {
	$tools:
		ensure => "present",
}