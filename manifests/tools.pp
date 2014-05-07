############################################
#  Generic environment tools and packages  #
############################################

$tools = [ "curl", "libcurl3", "vim", "git", "git-core", "libxrender1" ]

package {
	$tools:
		ensure => "present",
}