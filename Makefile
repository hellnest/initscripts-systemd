SERVICES   = ${wildcard *.service}
TARGETS    = ${wildcard *.target}
SCRIPTS    = arch-persistent-settings
GENERATORS = arch-daemons

makedirs:
<<<<<<< HEAD
	@install -vd ${DESTDIR}/lib/systemd/system-generators \
=======
	@install -vd ${DESTDIR}/lib/systemd/system/sysinit.target.wants \
		     ${DESTDIR}/lib/systemd/system/multi-user.target.wants \
	             ${DESTDIR}/lib/systemd/system/shutdown.target.wants \
		     ${DESTDIR}/lib/systemd/system-generators \
>>>>>>> upstream/teg-generator
	             ${DESTDIR}/lib/systemd/system

install: makedirs
	@install -vm755 -t ${DESTDIR}/lib/systemd/ ${SCRIPTS}
	@install -vm755 -t ${DESTDIR}/lib/systemd/system-generators/ ${GENERATORS}
	@install -vm644 -t ${DESTDIR}/lib/systemd/system ${SERVICES} ${TARGETS}
<<<<<<< HEAD
=======
	@( cd ${DESTDIR}/lib/systemd/system/sysinit.target.wants && \
	  ln -vsf ../nisdomainname.service && \
	  ln -vsf ../md-assemble.service && \
	  ln -vsf ../lvm-activate.service && \
	  ln -vsf ../depmod.service )
	@( cd ${DESTDIR}/lib/systemd/system/shutdown.target.wants && \
	  ln -vsf ../arch-persistent-settings.service )
	@( cd ${DESTDIR}/lib/systemd/system/multi-user.target.wants && \
	  ln -vsf ../arch-daemons.target )
>>>>>>> upstream/teg-generator
