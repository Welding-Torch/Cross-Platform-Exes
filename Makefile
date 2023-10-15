
SHELL:=/usr/bin/env bash
BASELOC:=$(shell pwd)

ifeq ($(ARCH),)
	ARCH=x86_64
endif

cosmo.setup:
	source $(BASELOC)/vars/$(ARCH) && $(BASELOC)/cosmo-setup
	touch $@

%.built: % cosmo.setup
	cd $< && chmod +x superconfigure
	source $(BASELOC)/vars/$(ARCH) && cd $< && ./superconfigure
	touch $@

readline-8.2.built: ncurses-6.4.built
bash-5.2.built: ncurses-6.4.built readline-8.2.built
less-643.built: ncurses-6.4.built readline-8.2.built
grep-3.11.built: ncurses-6.4.built readline-8.2.built
berry-lang.built: readline-8.2.built

emacs-28.2.built: ncurses-6.4.built
vim-9.0.1670.built: ncurses-6.4.built readline-8.2.built

wget-1.21.built: openssl-1.1.1u.built libuuid-1.0.3.built xz-5.4.3.built
rsync-3.2.7.built: openssl-1.1.1u.built
curl-8.4.0.built: openssl-1.1.1u.built xz-5.4.3.built libssh2-1.11.0.built
git-2.42.0.built: openssl-1.1.1u.built xz-5.4.3.built curl-8.4.0.built libexpat-2.5.0.built

cpy311-datasette.built: ncurses-6.4.built readline-8.2.built\
	openssl-1.1.1u.built gdbm-1.23.built libuuid-1.0.3.built\
	libyaml-0.2.5.built xz-5.4.3.built

cpy311-pypack1.built: ncurses-6.4.built readline-8.2.built\
	openssl-1.1.1u.built gdbm-1.23.built libuuid-1.0.3.built\
	xz-5.4.3.built


mpfr-4.2.0.built: gmp-6.3.0.built
texinfo-7.0.2.built: gmp-6.3.0.built ncurses-6.4.built
mpc-1.3.1.built: gmp-6.3.0.built mpfr-4.2.0.built isl-0.18.built
binutils-2.35.2.built: gmp-6.3.0.built mpc-1.3.1.built mpfr-4.2.0.built isl-0.18.built
gcc-11.2-patched.built: binutils-2.35.2.built

coreutils-9.4.built: gmp-6.3.0.built

cosmo-thirdparty: cosmo-repo-thirdparty.built
cli: tree-2.1.1.built grep-3.11.built less-643.built bash-5.2.built\
	findutils-4.9.0.built coreutils-9.4.built \
	berry-lang.built xz-5.4.3.built
web: wget-1.21.built rsync-3.2.7.built curl-8.4.0.built git-2.42.0.built
editor: emacs-28.2.built vim-9.0.1670.built
pypack1: cpy311-pypack1.built
datasette: cpy311-datasette.built
python: pypack1 datasette
gcc: gcc-11.2-patched.built

all: python cli editor gcc web

clean:
	find . -name "*.built" | xargs rm -f
	rm -f $(BASELOC)/cosmo.setup

distclean:
	git clean -f -d -x

.PHONY: all clean distclean\
	python cli pypack1 web \
	gcc datasette editor
