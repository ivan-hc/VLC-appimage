This repository provides AppImages of VLC built from PPAs (legacy) and the stable version based on JuNest, the lightweight Arch Linux based distro that runs, without root privileges, on top of any other Linux distro. Learn more about JuNest and the ArchImage project:

- JuNest https://github.com/fsquillace/junest
- ArchImage https://github.com/ivan-hc/ArchImage

This repository also provides installation scripts to build the AppImage from PPA and JuNest.
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

# How to integrate VLC AppImage into the system
The easier way is to install "AM" on your PC, see [ivan-hc/AM-application-manager](https://github.com/ivan-hc/AM-application-manager) for more.

Alternatively, you can install it this way:

    wget https://raw.githubusercontent.com/ivan-hc/AM-Application-Manager/main/programs/x86_64/vlc
    chmod a+x ./vlc
    sudo ./vlc
The AppImage will be installed in /opt/vlc as `vlc`, near other files.
### Update

    /opt/vlc/AM-updater
### Uninstall

    sudo /opt/vlc/remove
