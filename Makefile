bin_targets=batt chrome temps cmos-setup-hints pbcopy pinentry reset-network \
	kill-evolution-sig-scripts \

sbin_targets=average battd \
	mrtg-getinfo-fanspeed \

all:

install: $(addprefix /usr/local/bin/,$(bin_targets)) $(addprefix /usr/local/sbin/,$(sbin_targets))

/usr/local/bin/%: %
	install -o 0 -g 0 -m 755 $< $@

/usr/local/sbin/%: %
	install -o 0 -g 0 -m 755 $< $@
