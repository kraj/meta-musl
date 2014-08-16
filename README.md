# meta-musl ( musl C library layer)

This layer provides [musl](http://www.musl-libc.org/) as alternative to your system
C library for OpenEmbedded based distributions along with uclibc and eglibc/glibc

# Getting Started

```shell
git clone git://github.com/openembedded/openembedded-core.git
cd openembeeded-core
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
$ MACHINE=qemuarm LIBC=musl bitbake core-image-minimal
```
# Running

```shell
$ runqemu qemuarm
```

# Limitations

Currently core-image-minimal is buildable/bootable for MIPS, ARM, PPC, x86, x86_64 
based qemu machines
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

Send pull requests to openembedded-devel@lists.openembedded.org with '[meta-musl]' in the subject'

When sending single patches, please use something like:

'git send-email -M -1 --to openembedded-devel@lists.openembedded.org --subject-prefix=meta-musl][PATCH'

You are encouraged to fork the mirror on [github](https://github.com/kraj/meta-musl/)
to share your patches, this is preferred for patch sets consisting of more than 
one patch. Other services like gitorious, repo.or.cz or self hosted setups are 
of course accepted as well, 'git fetch <remote>' works the same on all of them.
We recommend github because it is free, easy to use, has been proven to be reliable 
and has a really good web GUI.

Layer Maintainer: Khem Raj <raj.khem@gmail.com>
