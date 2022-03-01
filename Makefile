all: nopoly

nopoly:
	@rm -rf ~/.dwm
	@cp -r vnla-dwm/.dwm ~
	@cd vnla-dwm/src && doas make install clean

poly:
	@cd poly-dwm/src && doas make install clean

clean:
	@cd poly-dwm/src && make clean
	@cd vnla-dwm/src && make clean
