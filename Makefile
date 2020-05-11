install: install-ttf conf-enable

install-ttf:
	install -Dm644 -t "${DESTDIR}/usr/share/fonts/toroid" ttf/*.ttf

install-conf:
	install -Dm644 -t "${DESTDIR}/etc/fonts/conf.avail" conf/*.conf

conf-enable: install-conf
	mkdir "${DESTDIR}/etc/fonts/conf.d"
	ln -srt "${DESTDIR}/etc/fonts/conf.d" "${DESTDIR}"/etc/fonts/conf.avail/*toroid*
