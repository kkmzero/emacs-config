# Configuration files for GNU Emacs
# 2025, Ivan Kmeťo
#
# CC0 1.0 Universal (CC0 1.0) Public Domain Dedication
# https://creativecommons.org/publicdomain/zero/1.0/


DEST_PATH = ~/.emacs.d/

install:
	cp -a init/. $(DEST_PATH)

uninstall:
	rm -rf $(DEST_PATH)init.el $(DEST_PATH)init.garbage.el
