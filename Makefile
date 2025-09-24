export DC=ldc2

all: onedrive_tray/onedrive_tray onedrive/onedrive

onedrive_tray/onedrive_tray:
	mkdir -p onedrive_tray/build
	cd onedrive_tray/build && qmake ../systray.pro
	make -C onedrive_tray/build

onedrive/onedrive:
	cd onedrive && ./configure
	make -C onedrive

clean:
	[ ! -f onedrive/Makefile ] || make -C onedrive clean
	rm -rf onedrive_tray/build onedrive/Makefile
