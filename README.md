# VLC-x86_64.AppImage
AppImage for VLC Video and Media Player for GLIBC 2.27 (tested on Ubuntu 18.04 and Debian Testing/Unstable).

This version is only a sample and needs to be improved due to some recent [H264 compatibility issues](https://github.com/ivan-hc/VLC-appimage/issues/3).

# How can you help
Any fix can be applied by using appropriate commands into the [AppRun](https://raw.githubusercontent.com/ivan-hc/VLC-appimage/main/AppRun) script. To test your changes:
1. download the AppImage from https://github.com/ivan-hc/VLC-appimage/releases/tag/continuous
2. now you have to made the downloaded AppImage "executable":

       chmod a+x ./VLC_media_player-$VERSION-x86_64.AppImage
3. extract the content of the AppImage:

       ./VLC_media_player-$VERSION-x86_64.AppImage --appimage-extract
4. edit the [AppRun](https://raw.githubusercontent.com/ivan-hc/VLC-appimage/main/AppRun) with your favourite text editor
5. to test your improvements, just run the AppRun script:

       ./AppRun
6. create a fork for this repository and add your improvements to the [AppRun](https://raw.githubusercontent.com/ivan-hc/VLC-appimage/main/AppRun) script.
