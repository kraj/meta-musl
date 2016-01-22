# musl C library layer for OpenEmbedded

This layer provides [musl](http://www.musl-libc.org/) as an alternative to system
C library for OpenEmbedded based distributions along with uClibc and eglibc/glibc

# Getting Started

```shell
git clone git://github.com/openembedded/openembedded-core.git
cd openembedded-core
git clone git://github.com/openembedded/bitbake.git
git clone git://github.com/kraj/meta-musl.git

$ . ./oe-init-build-env
```

Edit conf/bblayers.conf to add meta-musl to layer mix e.g.

```python
BBLAYERS ?= " \
  /home/kraj/openembedded-core/meta-musl \
  /home/kraj/openembedded-core/meta \
  "
```

# Building

Below we build for qemuarm machine as an example

```shell
$ MACHINE=qemuarm TCLIBC=musl bitbake core-image-minimal
$ MACHINE=qemux86 TCLIBC=musl bitbake core-image-weston
$ MACHINE=qemux86 TCLIBC=musl bitbake core-image-sato

```
# Running

```shell
$ TCLIBC=musl runqemu qemuarm
```

# Limitations

Only works with OE-Core >= 1.9

Currently core-image-minimal is buildable/bootable for MIPS, ARM, PPC, x86, x86_64 
based qemu machines, core-image-sato and core-image-weston boots with qemux86
MACHINE variable and TCLIBC variables can also be set in conf/local.conf to avoid typing it on commandline on any bitbake invocation

# Dependencies

```
URI: git://github.com/openembedded/openembedded-core.git
branch: master
revision: HEAD

URI: git://github.com/openembedded/bitbake.git
branch: master
revision: HEAD
```

# Upstreaming

## Mailing List
Send pull requests to openembedded-devel@lists.openembedded.org with '[meta-musl]' in the subject'

When sending single patches, please use something like

```shell
git send-email -M -1 --to openembedded-devel@lists.openembedded.org --subject-prefix=meta-musl][PATCH
```
## Forking via github

You are encouraged to fork the mirror on [github](https://github.com/kraj/meta-musl/)
to share your patches, this is preferred for patch sets consisting of more than 
one patch. Other services like gitorious, repo.or.cz or self hosted setups are 
of course accepted as well, 'git fetch <remote>' works the same on all of them.
We recommend github because it is free, easy to use, has been proven to be reliable 
and has a really good web GUI.

Layer Maintainer: Khem Raj raj.khem@gmail.com
