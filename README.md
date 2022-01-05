# VLC-x86_64.AppImage
AppImage for VLC Video and Media Player from Debian Unstable

This repository provides the script to create and install the latest version of VLC from Debian Unstable, and an AppImage ready to be used.

This version is only a sample.

Furter versions can be easily managed by installing [AM Application Manager](https://github.com/ivan-hc/AM-application-manager).
# How to integrate VLC AppImage into the system
### Installation
To download and install the standard version:

    wget https://raw.githubusercontent.com/ivan-hc/VLC-x86_64.AppImage/main/vlc
    chmod a+x ./vlc
    sudo ./vlc
To download and install a version that includes more plugins (ie vlc-plugin-access-extra, vlc-plugin-fluidsynth, vlc-plugin-jack, vlc-plugin-notify, vlc-plugin-samba, vlc-plugin-skins2, vlc-plugin-svg, vlc-plugin-video-splitter and vlc-plugin-visualization):

    wget https://raw.githubusercontent.com/ivan-hc/VLC-x86_64.AppImage/main/vlc+
    chmod a+x ./vlc+
    sudo ./vlc+
### Update

    /opt/vlc/AM-updater
### Uninstall

    sudo /opt/vlc/remove


------------------------------------
# These and more scripts will be available on my new repository, at [ivan-hc/AM-application-manager](https://github.com/ivan-hc/AM-application-manager).
