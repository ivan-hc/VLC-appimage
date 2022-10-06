# VLC-x86_64.AppImage
AppImage for VLC Video and Media Player for GLIBC 2.27 (tested on Ubuntu 18.04 and Debian Testing/Unstable).

This repository provides the script to create and install the latest version of VLC from https://launchpad.net/~savoury1, and an AppImage ready to be used.

This version is only a sample. The scripts available on this repository can only build the AppImage for the current VLC version available, with or without extra plugins.

Furter versions can be easily managed by installing [AM Application Manager](https://github.com/ivan-hc/AM-application-manager).
# How to integrate VLC AppImage into the system
### Installation
To download and install the standard version from AM Application Manager:

    wget https://raw.githubusercontent.com/ivan-hc/AM-Application-Manager/main/programs/x86_64/vlc
    chmod a+x ./vlc
    sudo ./vlc
To download and install a version that includes more plugins (ie vlc-plugin-access-extra, vlc-plugin-fluidsynth, vlc-plugin-jack, vlc-plugin-notify, vlc-plugin-samba, vlc-plugin-skins2, vlc-plugin-svg, vlc-plugin-video-splitter and vlc-plugin-visualization):

    wget https://raw.githubusercontent.com/ivan-hc/AM-Application-Manager/main/programs/x86_64/vlc+
    chmod a+x ./vlc+
    sudo ./vlc+
### Update

    /opt/vlc/AM-updater
### Uninstall

    sudo /opt/vlc/remove
