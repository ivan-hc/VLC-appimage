# VLC-x86_64.AppImage
AppImage for VLC Video and Media Player for GLIBC 2.27 (tested on Ubuntu 18.04 and Debian Testing/Unstable).

This version is only a sample and needs to be improved due to some recent [H264 compatibility issues](https://github.com/ivan-hc/VLC-appimage/issues/3).

# How can you help
1. download the AppImage from https://github.com/ivan-hc/VLC-appimage/releases/tag/continuous
2. now you have to made the downloaded AppImage "executable":

       chmod a+x ./VLC_media_player-$VERSION-x86_64.AppImage
3. extract the content of the AppImage:

       ./VLC_media_player-$VERSION-x86_64.AppImage --appimage-extract
4. edit the AppRun with your favourite text editor
5. to test your improvements, just run the AppRun script:

       ./AppRun
6. create a fork for this repository and add your improvements to both the scripts, ie [vlc](https://github.com/ivan-hc/VLC-appimage/blob/main/vlc) and [vlc+](https://github.com/ivan-hc/VLC-appimage/blob/main/vlc+) (the part related to the AppRun's creation is respectivelly at lines 77 and 87).
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
