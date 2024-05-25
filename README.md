# `superconfigure`

`superconfigure` is a collection of programs ported to run as fat binaries using
[Cosmopolitan Libc][cosmo]. This repository includes build scripts for popular
software such as `bash`, `lua`, `emacs`, GNU Coreutils, `sed`, `gcc-12`, `curl`,
and others. For each of these, the source code is downloaded from the upstream
sources, compiled for `x86_64` and `aarch64`, and finally combined into a fat
binary using Cosmopolitan Libc's `apelink` program.

# Where can I download the built software?

The  [`Releases` page](https://github.com/ahgamut/superconfigure/releases)
should have the most recent builds of executables in this repo, built via Github
Actions. 

If you'd like to add your own software build scripts, submit a PR! Read up
`config/README.md` how all of this works.
