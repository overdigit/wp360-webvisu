prefix = /usr

all:

install:
	install -d $(DESTDIR)/etc/sway/config.d/
	install -d $(DESTDIR)$(prefix)/lib/systemd/system/codesyscontrol.service.d
	install -d $(DESTDIR)$(prefix)/lib/systemd/system/getty@tty1.service.d
	install -d $(DESTDIR)$(prefix)/lib/systemd/user
	install 51-systemd-user-target.conf $(DESTDIR)/etc/sway/config.d
	install 30-wp360-virtual-output.conf $(DESTDIR)/etc/sway/config.d
	install 10-codesys-user-target.conf $(DESTDIR)$(prefix)/lib/systemd/system/codesyscontrol.service.d
	install autologin.conf $(DESTDIR)$(prefix)/lib/systemd/system/getty@tty1.service.d
	install codesys.target $(DESTDIR)$(prefix)/lib/systemd/user
	install sway.service $(DESTDIR)$(prefix)/lib/systemd/user
	install sway-session.target $(DESTDIR)$(prefix)/lib/systemd/user
	install webvisu.service $(DESTDIR)$(prefix)/lib/systemd/user

.PHONY: all install
