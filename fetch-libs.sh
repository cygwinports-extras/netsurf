for p in buildsystem libparserutils libwapcaplet libhubbub libcss libnsbmp libnsgif libdom netsurf
do
	git clone git://source.netsurf-browser.org/${p}.git
	tar Jcf $p-git.tar.xz --exclude-vcs ${p}
	rm -fr ${p}
done
