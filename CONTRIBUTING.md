Here are a few ways you help improve Lite-XL.

First, please join the Discord server: https://discord.gg/RWzqC3nx7K, where most of the coordination happens.

# State as of October 2025

Work is mostly focused towards version 3 which includes some important rewrites to make the editor more robust, have a better plugin API, and add better support for multiple windows. 

As of 2025-10-25, only the core plugins are considered ported to the new plugin API. Some of the non-core ones have, but your mileage will vary a lot. 

# Using the preview version

You can help by simply using the 3.0 preview version. It can be installed with the core plugins using lpm:

```
lpm run https://github.com/adamharrison/lite-xl.git:3.0-preview 3.0-preview --update
```

Please report any issue on [Github](https://github.com/lite-xl/lite-xl/issues), or on the Discord server on channel #lite-xl.

# Contributing code

If you're willing to get your hands dirty, bug fixes in the form of PRs are also welcome.

## Compiling the development version

As of 2025-10-25, work is happening simultaneously on multiple branches, which are regularly merged by Adam Harrison on a branch called `3.0-preview`. This is the state you want to check out:

```
git clone https://github.com/adamharrison/lite-xl
git checkout 3.0-preview
```

Regular compilation instructions from [README.md](README.md) apply. If you want to work with two distinct installations of lite-xl (the stable version 2, and a development version 3) here's a suggestion how to do it on Linux:

```
# Assuming you have all the dependencies installed.
cd lite-xl
meson setup --buildtype=release --prefix /lite-xl-dev build-release
meson compile -C build-release

INSTALL_DIR=$HOME/.local
# Installs the development version under ${INSTALL_DIR}/lite-xl-dev
meson install --destdir "${INSTALL_DIR}" --skip-subprojects -C build-release

# A convenient alias to run the dev version with a dedicated config directory, 
# to not conflict with the default one ($HOME/.config/lite-xl)
alias lite-xl-dev="LITE_USERDIR=$HOME/.config/lite-xl-dev ${INSTALL_DIR}/lite-xl-dev/bin/lite-xl"
```

## Filing PRs

- Changes related to virtual lines: file the PR against https://github.com/adamharrison/lite-xl/tree/PR/virtual-lines
- Changes related to multi-window support: file the PR against https://github.com/adamharrison/lite-xl/tree/PR/multi-windows-ipc
- Any other changes: file the PR against https://github.com/adamharrison/lite-xl/tree/3.0-preview

Then send a message on the #lite-xl Discord channel to make people aware of the PR.

