# `superconfigure`

`superconfigure` is a collection of programs ported to run as fat binaries using
[Cosmopolitan Libc][cosmo]. This repository includes build scripts for popular
software such as `bash`, `lua`, `emacs`, GNU Coreutils, `sed`, `gcc-12`, `curl`,
and others. For each of these, the source code is downloaded from the upstream
sources, compiled for `x86_64` and `aarch64`, and finally combined into a fat
binary using Cosmopolitan Libc's `apelink` program.

# List of Executables that will work on Windows, Mac, and Linux
`tar`, `zip`, `unzip`, `bzip2`, `zstd`, `xz`, `brotli`, `gzip`, and `pigz`.  
`bash`, `zsh`, `grep`, `less`, `lua`, `find`, GNU coreutils, and `ninja`.  
`vim`, `nano`, and `emacs`.  
`gcc-12.3` and `binutils-2.42` tools targeting (x86-64-linux-cosmo).
`gcc-12.3` and `binutils-2.42` tools targeting (aarch64-linux-cosmo).  
`datasette` a build of CPython 3.11 with the datasette library.  
`python`, a build of CPython 3.11 with a bunch of cli libraries like `black`, `cookiecutter`.  
`links`, `wget`, `curl`, `git`, and `rsync`.  
[`berry`](https://berry-lang.github.io/), [`janet`](https://janet-lang.org/), [`lua`](https://www.lua.org/), [`php`](https://www.php.net/).  

# Where can I download the built software?

The  [`Releases` page](https://github.com/ahgamut/superconfigure/releases)
should have the most recent builds of executables in this repo, built via Github
Actions.  
