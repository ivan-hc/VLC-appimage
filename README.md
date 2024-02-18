This repository provides AppImages of VLC built from PPAs (legacy) and the Stable and the GIT versions based on JuNest, the lightweight Arch Linux based distro that runs, without root privileges, on top of any other Linux distro. Learn more about JuNest and the ArchImage project:

- JuNest https://github.com/fsquillace/junest
- ArchImage https://github.com/ivan-hc/ArchImage

This repository also provides installation scripts to build the AppImages from PPA and JuNest.

*NOTE: the 32-bit version for the old i386 architectures is available at [ivan-hc/32-bit-AppImage-packages-database](https://github.com/ivan-hc/32-bit-AppImage-packages-database), download it from [here](https://github.com/ivan-hc/32-bit-AppImage-packages-database/releases/tag/vlc).*

# How to buid the "ArchImage" by yourself

    mkdir tmp
    cd tmp
    wget https://raw.githubusercontent.com/ivan-hc/VLC-appimage/main/vlc-junest.sh
    chmod a+x ./vlc-junest.sh
    ./vlc-junest.sh
If the mirrorlist is updated correctly (see lines 30-32) the script should build the AppImage in two minutes or less. In case of problems with mirrorlist, comment lines 30-32, JuNest will use the defaults.

And when the script has finished, just run the AppImage:

    ./*AppImage
The final size is less than 200MB and can still be lighter. Just analyze the vlc.AppDir to check the unneeded files (currently removed files are listed by line 115).

---------------------------------

## Install and update it with ease

I wrote two bash scripts to install and manage the applications: [AM](https://github.com/ivan-hc/AM-Application-Manager) and [AppMan](https://github.com/ivan-hc/AppMan). Their dual existence is based on the needs of the end user.

| [**"AM" Application Manager**](https://github.com/ivan-hc/AM-Application-Manager) |
| -- |
| <sub>***If you want to install system-wide applications on your GNU/Linux distribution in a way that is compatible with [Linux Standard Base](https://refspecs.linuxfoundation.org/lsb.shtml) (all third-party apps must be installed in dedicated directories under `/opt` and their launchers and binaries in `/usr/local/*` ...), just use ["AM" Application Manager](https://github.com/ivan-hc/AM-Application-Manager). This app manager requires root privileges only to install / remove applications, the main advantage of this type of installation is that the same applications will be available to all users of the system.***</sub>
[![Readme](https://img.shields.io/github/stars/ivan-hc/AM-Application-Manager?label=%E2%AD%90&style=for-the-badge)](https://github.com/ivan-hc/AM-Application-Manager/stargazers) [![Readme](https://img.shields.io/github/license/ivan-hc/AM-Application-Manager?label=&style=for-the-badge)](https://github.com/ivan-hc/AM-Application-Manager/blob/main/LICENSE)

| [**"AppMan"**](https://github.com/ivan-hc/AppMan)
| --
| <sub>***If you don't want to put your app manager in a specific path but want to use it portable and want to install / update / manage all your apps locally, download ["AppMan"](https://github.com/ivan-hc/AppMan) instead. With this script you will be able to decide where to install your applications (at the expense of a greater consumption of resources if the system is used by more users). AppMan is portable, all you have to do is write the name of a folder in your `$HOME` where you can install all the applications available in [the "AM" database](https://github.com/ivan-hc/AM-Application-Manager/tree/main/programs), and without root privileges.***</sub>
[![Readme](https://img.shields.io/github/stars/ivan-hc/AppMan?label=%E2%AD%90&style=for-the-badge)](https://github.com/ivan-hc/AppMan/stargazers) [![Readme](https://img.shields.io/github/license/ivan-hc/AppMan?label=&style=for-the-badge)](https://github.com/ivan-hc/AppMan/blob/main/LICENSE)
