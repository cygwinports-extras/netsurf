libparserutils_v=0.1.1
libwapcaplet_v=0.1.0
hubbub_v=0.1.1
libcss_v=0.1.1
libnsbmp_v=0.0.3
libnsgif_v=0.0.3

for p in libparserutils libwapcaplet hubbub libcss libnsbmp libnsgif
do
	v=${p}_v
	svn co svn://svn.netsurf-browser.org/tags/${p}/${!v} ${p}
	tar Jcf $p-svn.tar.xz ${p}
	rm -fr ${p}
done
