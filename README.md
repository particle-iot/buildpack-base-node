# Buildpack base with Node.js

[![Build Status](https://travis-ci.org/particle-iot/buildpack-base-node.svg?branch=master)](https://travis-ci.org/particle-iot/buildpack-base-node) [![](https://imagelayers.io/badge/particle/buildpack-base-node:latest.svg)](https://imagelayers.io/?images=particle/buildpack-base-node:latest 'Get your own badge on imagelayers.io')


It inherits [base buildpack](https://github.com/particle-iot/buildpack-base) and installs Node.js.

## Building image

**Before building this image, build or fetch [buildpack-base](https://github.com/particle-iot/buildpack-base).**

```bash
$ export BUILDPACK_IMAGE=base-node
$ git clone "git@github.com:particle-iot/buildpack-${BUILDPACK_IMAGE}.git"
$ cd buildpack-$BUILDPACK_IMAGE
$ ./scripts/build-image
```
