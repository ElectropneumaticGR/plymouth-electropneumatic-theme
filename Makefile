.PHONY: install

THEME_DIR=/usr/share/plymouth/themes/electropneumatic

install:
	mkdir -p $(THEME_DIR)
	cp -r src/* $(THEME_DIR)
	sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth $(THEME_DIR)/electropneumatic.plymouth 100
	sudo update-alternatives --config default.plymouth
	sudo update-initramfs -u
