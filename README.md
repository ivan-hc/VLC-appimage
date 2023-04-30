# VLC-x86_64.AppImage
AppImage for VLC Video and Media Player for GLIBC 2.27 (tested on Ubuntu 18.04 and Debian Testing/Unstable).

This repository provides two scripts for the automatic workflow, two AppImages (with or without plugins) ready for use and the AppRun of the AppImage.

# Requirements
This AppImage requires some packages installed on the host:
- `libqt5svg5` (on Debian and derivatives) or `qt5-svg` (on Arch Linux and derivatives, Solus and Void) or `qt5-qtsvg` (on Fedora and CentOS)
- `ffmpeg` (this is needed for h264 conversion #3 )

# How can you improve this AppImage
Any fix can be applied by using appropriate commands into the [AppRun](https://raw.githubusercontent.com/ivan-hc/VLC-appimage/main/AppRun) script. To test your changes:
1. download the AppImage from https://github.com/ivan-hc/VLC-appimage/releases/tag/continuous
2. now you have to made the downloaded AppImage "executable":

       chmod a+x ./VLC_media_player-$VERSION-x86_64.AppImage
3. extract the content of the AppImage:

       ./VLC_media_player-$VERSION-x86_64.AppImage --appimage-extract
4. edit the [AppRun](https://raw.githubusercontent.com/ivan-hc/VLC-appimage/main/AppRun) with your favourite text editor
5. to test your improvements, just run the AppRun script:

       ./AppRun
   to see more detailer error messages:
   
       DL_DEBUG=libs ./AppRun
6. create a fork for this repository and add your improvements to the [AppRun](https://raw.githubusercontent.com/ivan-hc/VLC-appimage/main/AppRun) script.

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

------------------------------------
# About Rob Savoury's PPA 
SITE: https://launchpad.net/~savoury1

This is a collection of PPAs giving significant upgrades for the past 6+ years of Ubuntu (LTS) releases. Popular software here: Blender, Chromium, digiKam, FFmpeg, GIMP, GPG, Inkscape, LibreOffice, mpv, Scribus, Telegram, and VLC.

***"SavOS project 3 year milestones: 20,000 uploads and 20,000 users"***
               https://medium.com/@RobSavoury/bade09fa042e

Fun stats: Over 23,000 uploads since August 2019 of 5,100 unique packages!
(3 Nov 2022) With now 460+ unique packages published for 22.04 Jammy LTS, 1,730+ for 20.04 Focal LTS, and a whole lot extra for Xenial & Bionic LTS!

If software at this site is useful to you then please consider a donation:

***Donations: https://paypal.me/Savoury1 & https://ko-fi.com/Savoury1***

***Also https://patreon.com/Savoury1 & https://liberapay.com/Savoury1***

UPDATE (8 May 2022): See new https://twitter.com/RobSavoury for updates on the many Launchpad PPAs found here, ie. new packages built, bugfixes, etc.

***Bugs: File bug reports @ https://bugs.launchpad.net/SavOS/+filebug***

[ "SavOS" is the project heading for all packages at https://launchpad.net/~savoury1 ]
