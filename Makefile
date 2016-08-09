bin_targets=batt temps cmos-setup-hints pbcopy
sbin_targets=average 

all:

install: $(addprefix /usr/local/bin/,$(bin_targets)) $(addprefix /usr/local/sbin/,$(sbin_targets))

/usr/local/bin/%: %
	install -o 0 -g 0 -m 755 $< $@

/usr/local/sbin/%: %
	install -o 0 -g 0 -m 755 $< $@
