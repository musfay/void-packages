#
# This helper is for templates building slashpackage software.
# http://cr.yp.to/slashpackage.html
#
# required variables
#
#   build_style=slashpackage
#   wrksrc=<category>/${pkgname}-${version}
#   distfiles=<download link>
# 
# example (daemontools)
#
# Template file for 'daemontools'
# pkgname=daemontools
# version=0.76
# revision=1
# wrksrc=admin/${pkgname}-${version}
# build_style=gnu-makefile
# short_desc="A collection of tools for managing UNIX services"
# maintainer="bougyman <tj@geoforce.com>"
# license="Public Domain"
# homepage="http://cr.yp.to/daemontools.html"
# distfiles="http://cr.yp.to/daemontools/${pkgname}-${version}.tar.gz"
# checksum=a55535012b2be7a52dcd9eccabb9a198b13be50d0384143bd3b32b8710df4c1f
# patch_args="-p1" # << important for most slashpackage patches


do_build() {
	package/compile
}

do_install() {
	for command in command/*; do
		vbin $command
	done
}
