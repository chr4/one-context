install:
	@mkdir -vp /etc/one-context.d
	@cp -v one-context.d/* /etc/one-context.d/
	@cp -v init.d/* /etc/init.d/
	/usr/sbin/update-rc.d vmcontext defaults 09 99

uninstall:
	/usr/sbin/update-rc.d vmcontext remove
	@rm -vrf /etc/one-context.d
	@rm -vrf /etc/init.d/vmcontext

.PHONY: install uninstall
