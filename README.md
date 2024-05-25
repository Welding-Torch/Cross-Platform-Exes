# `superconfigure`

`superconfigure` is a collection of programs ported to run as fat binaries using
[Cosmopolitan Libc][cosmo]. This repository includes build scripts for popular
software such as `bash`, `lua`, `emacs`, GNU Coreutils, `sed`, `gcc-12`, `curl`,
and others. For each of these, the source code is downloaded from the upstream
sources, compiled for `x86_64` and `aarch64`, and finally combined into a fat
binary using Cosmopolitan Libc's `apelink` program.

# What's included in the build
The built software is split into the following zip files:  
**compress.zip**  
contains `tar`, `zip`, `unzip`, `bzip2`, `zstd`, `xz`, `brotli`, `gzip`, and `pigz`.  
**cli.zip**  
contains `bash`, `zsh`, `grep`, `less`, `lua`, `find`, GNU coreutils, and `ninja`.  
**editor.zip**  
contains `vim`, `nano`, and `emacs`.  
**x86_64-gcc.zip**  
contains the `gcc-12.3` and `binutils-2.42` tools targeting (x86-64-linux-cosmo).  
**aarch64-gcc.zip**  
contains the `gcc-12.3` and `binutils-2.42` tools targeting (aarch64-linux-cosmo).  
**datasette.zip**  
contains `datasette` a build of CPython 3.11 with the datasette library.  
**pypack1.zip**  
contains `python`, a build of CPython 3.11 with a bunch of cli libraries like `black`, `cookiecutter`.  
**web.zip**  
contains `links`, `wget`, `curl`, `git`, and `rsync`.  
**gui.zip**  
contains SDL2 test binaries built with `libX11` (experimental, requires X Server to be running on the host system).  
**lang.zip**  
contains languages [`berry`](https://berry-lang.github.io/), [`janet`](https://janet-lang.org/), [`lua`](https://www.lua.org/), [`php`](https://www.php.net/).  

# Where can I download the built software?

The  [`Releases` page](https://github.com/ahgamut/superconfigure/releases)
should have the most recent builds of executables in this repo, built via Github
Actions. 

If you'd like to add your own software build scripts, submit a PR! Read up
`config/README.md` how all of this works.
