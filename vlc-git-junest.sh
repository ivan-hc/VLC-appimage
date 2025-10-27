#!/usr/bin/env bash

APP=vlc-git
BIN="vlc" #CHANGE THIS IF THE NAME OF THE BINARY IS DIFFERENT FROM "$APP" (for example, the binary of "obs-studio" is "obs")
DEPENDENCES="ffmpeg fontconfig freetype2 fribidi gnutls harfbuzz libarchive libdvbpsi libidn libmad libmatroska libmpcdec libplacebo libsecret libupnp libxinerama libxml2 libxpm qt6-base qt6-declarative rnnoise taglib cb-util-keysyms" #SYNTAX: "APP1 APP2 APP3 APP4...", LEAVE BLANK IF NO OTHER DEPENDENCIES ARE NEEDED
BASICSTUFF="binutils debugedit gzip"
COMPILERS="base-devel"

# Set keywords to searchan include in names of directories and files in /usr/bin (BINSAVED), /usr/share (SHARESAVED) and /usr/lib (LIBSAVED)
BINSAVED="SAVEBINSPLEASE"
SHARESAVED="SAVESHAREPLEASE"
LIBSAVED="libacl.so libaom.so libarchive.so libaribb libaribcaption.so libass.so libasyncns.so libatk libatk-bridge libatomic.so libatspi.so libattr.so libavahi-client.so libavahi-common.so libavc libavcodec.so libavformat.so libavutil.so libb libbfd libblkid.so libbluray.so libbrotlicommon.so libbrotlidec.so libbrotlienc.so libbz libcaca.so libcairo-gobject.so libcairo.so libcap.so libcddb.so libchromaprint.so libcom_err.so libcrypto.so libcryptsetup.so libc.so libctf.so libcurl.so libdatrie.so libdav libdavs libdb libdbus libdc libdeflate.so libdevmapper.so libdouble-conversion.so libdovi.so libdrm_amdgpu.so libdrm_intel.so libdrm.so libduktape.so libdvbpsi.so libdvdnav.so libdvdread.so libebml.so libebur libEGL.so libepoxy.so libevdev.so libexpat.so libfaad.so libffi.so libFLAC.so libfluidsynth.so libfontconfig.so libfreerdp libfreetype.so libfribidi.so libgallium libgbm.so libgcc_s.so libgcrypt.so libgdk libgdk_pixbuf libgio libGLdispatch.so libglib libglslang-default-resource-limits.so libglslang.so libGL.so libGLX.so libgme.so libgmodule libgmp.so libgnomekbd.so libgnomekbdui.so libgnutls.so libgobject libgomp.so libgoom libgpg-error.so libgraphite libgsm.so libgssapi_krb libgstvideo libgtk libgudev libharfbuzz.so libhogweed.so libhwy.so libICE.so libicudata.so libicuuc.so libidn libidn.so libinput.so libixml.so libjack.so libjbig.so libjpeg.so libjxl_cms.so libjxl.so libjxl_threads.so libk libkeyutils.so libKF libkrb liblcms libleancrypto.so liblirc_client.so libliveMedia.so liblz liblzma.so libmad.so libmatroska.so libmd libmicrodns.so libmodplug.so libmount.so libmp libmpcdec.so libmpfr.so libmpg libm.so libmtdev.so libmtp.so libmvec.so libncursesw.so libnettle.so libnfs.so libnghttp libnotify.so libogg.so libOpenCL.so libopencore-amrnb.so libopencore-amrwb.so libOpenGL.so libopenjp libopenmpt.so libopus.so libp libpango libpangocairo libpangoft libpciaccess.so libpcre libpgm libpipewire libpixman libplacebo.so libpng libprojectM.so libprotobuf-lite.so libproxy.so libpsl.so libpulse.so libQt librav libraw libreadline.so librnnoise.so librom librsvg libsamplerate.so libsecret libsframe.so libshaderc_shared.so libsharpyuv.so libshine.so libshout.so libsmbclient.so libSM.so libsnappy.so libsndfile.so libsodium.so libsoxr.so libspeexdsp.so libspeex.so libSPIRV-Tools-opt.so libSPIRV-Tools.so libsqlite libsrt.so libssh libssh.so libssl.so libstdc++.so libswresample.so libswscale.so libsystemd.so libtag.so libtasn libthai.so libtheoradec.so libtheoraenc.so libtiff.so libtiger.so libtinysparql libtss libts.so libtwolame.so libudev.so libunibreak.so libunistring.so libunwind.so libupnp.so libuuid.so libva-drm.so libva.so libva-wayland.so libva-x libvdpau.so libvlccore.so libvlc_pipewire.so libvlc_pulse.so libvlc.so libvlc_vdpau.so libvlc_xcb_events.so libvncclient.so libvorbisenc.so libvorbisfile.so libvorbis.so libvpl.so libvpx.so libvulkan.so libwacom.so libwayland-client.so libwayland-egl.so libwebpmux.so libwebp.so libx libX libxapp.so libXau.so libxcb-composite.so libxcb-damage.so libxcb-dri libxcb-glx.so libxcb-icccm.so libxcb-image.so libxcb-keysyms.so libxcb-present.so libxcb-randr.so libxcb-render.so libxcb-render-util.so libxcb-shape.so libxcb-shm.so libxcb.so libxcb-sync.so libxcb-util.so libxcb-xfixes.so libxcb-xinput.so libxcb-xkb.so libXcomposite.so libXdamage.so libXdmcp.so libXext.so libXfixes.so libXinerama.so libXi.so libxkbcommon.so libxkbcommon-x libxkbfile.so libxklavier.so libxml libXpm.so libXrandr.so libXrender.so libxshmfence.so libxvidcore.so libXxf libzmq.so libz.so libzstd.so libzvbi.so qt Qt"

# Set the items you want to manually REMOVE. Complete the path in /etc/, /usr/bin/, /usr/lib/, /usr/lib/python*/ and /usr/share/ respectively.
# The "rm" command will take into account the listed object/path and add an asterisk at the end, completing the path to be removed.
# Some keywords and paths are already set. Remove them if you consider them necessary for the AppImage to function properly.
ETC_REMOVED="makepkg.conf pacman"
BIN_REMOVED="gcc qt.conf"
LIB_REMOVED="gcc"
PYTHON_REMOVED="__pycache__/"
SHARE_REMOVED="gcc icons/AdwaitaLegacy icons/Adwaita/cursors/ terminfo"

# Set mountpoints, they are ment to be set into the AppRun.
# Default mounted files are /etc/resolv.conf, /etc/hosts, /etc/nsswitch.conf, /etc/passwd, /etc/group, /etc/machine-id, /etc/asound.conf and /etc/localtime
# Default mounted directories are /media, /mnt, /opt, /run/media, /usr/lib/locale, /usr/share/fonts, /usr/share/themes, /var, and Nvidia-related directories
# Do not touch this if you are not sure.
mountpoint_files=""
mountpoint_dirs=""

# Post-installation processes (add whatever you want)
_post_installation_processes() {
	printf "\n◆ User's processes: \n\n"
	echo " - Fix vlc-cache-gen"
	rm -Rf AppDir/.junest/usr/lib/vlc/* && rsync -av archlinux/.junest/usr/lib/vlc/* AppDir/.junest/usr/lib/vlc/ || exit 1
}

##########################################################################################################################################################
#	SETUP THE ENVIRONMENT
##########################################################################################################################################################

# Download archimage-builder.sh
if [ ! -f ./archimage-builder.sh ]; then
	ARCHIMAGE_BUILDER="https://raw.githubusercontent.com/ivan-hc/ArchImage/refs/heads/main/core/archimage-builder.sh"
	wget --retry-connrefused --tries=30 "$ARCHIMAGE_BUILDER" -O ./archimage-builder.sh || exit 0
fi

# Create and enter the AppDir
mkdir -p AppDir archlinux && cd archlinux || exit 1

_JUNEST_CMD() {
	./.local/share/junest/bin/junest "$@"
}

# Set archlinux as a temporary $HOME directory
HOME="$(dirname "$(readlink -f "$0")")"

##########################################################################################################################################################
#	DOWNLOAD, INSTALL AND CONFIGURE JUNEST
##########################################################################################################################################################

_enable_multilib() {
	printf "\n[multilib]\nInclude = /etc/pacman.d/mirrorlist" >> ./.junest/etc/pacman.conf
}

_enable_chaoticaur() {
	# This function is ment to be used during the installation of JuNest, see "_pacman_patches"
	_JUNEST_CMD -- sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
	_JUNEST_CMD -- sudo pacman-key --lsign-key 3056513887B78AEB
	_JUNEST_CMD -- sudo pacman-key --populate chaotic
	_JUNEST_CMD -- sudo pacman --noconfirm -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
	printf "\n[chaotic-aur]\nInclude = /etc/pacman.d/chaotic-mirrorlist" >> ./.junest/etc/pacman.conf
}

_enable_archlinuxcn() {
	_JUNEST_CMD -- sudo pacman --noconfirm -U "https://mirrors.xtom.ee/archlinuxcn/x86_64/$(curl -Ls https://mirrors.xtom.ee/archlinuxcn/x86_64/ | tr '"' '\n' | grep "^archlinuxcn-keyring.*zst$" | tail -1)"
	printf "\n[archlinuxcn]\n#SigLevel = Never\nServer = https://mirrors.xtom.ee/archlinuxcn/\$arch" >> ./.junest/etc/pacman.conf
}

_custom_mirrorlist() {
	COUNTRY=$(curl -i ipinfo.io 2>/dev/null | grep country | cut -c 15- | cut -c -2)
	if [ -n "$GITHUB_REPOSITORY_OWNER" ] || ! curl --output /dev/null --silent --head --fail "https://archlinux.org/mirrorlist/?country=$COUNTRY" 1>/dev/null; then
		curl -Ls https://archlinux.org/mirrorlist/all | awk NR==2 RS= | sed 's/#Server/Server/g' > ./.junest/etc/pacman.d/mirrorlist
	else
		curl -Ls "https://archlinux.org/mirrorlist/?country=$COUNTRY" | sed 's/#Server/Server/g' > ./.junest/etc/pacman.d/mirrorlist
	fi
}

_bypass_signature_check_level() {
	sed -i 's/#SigLevel/SigLevel/g; s/Required DatabaseOptional/Never/g' ./.junest/etc/pacman.conf
}

_install_junest() {
	printf -- "-----------------------------------------------------------------------------\n◆ Clone JuNest from https://github.com/ivan-hc/junest\n-----------------------------------------------------------------------------\n"
	git clone https://github.com/ivan-hc/junest.git ./.local/share/junest
	printf -- "-----------------------------------------------------------------------------\n◆ Downloading JuNest archive from https://github.com/ivan-hc/junest\n-----------------------------------------------------------------------------\n"
	if [ ! -f ./junest-x86_64.tar.gz ]; then
		curl -#Lo junest-x86_64.tar.gz https://github.com/ivan-hc/junest/releases/download/continuous/junest-x86_64.tar.gz || exit 1
	fi
	_JUNEST_CMD setup -i junest-x86_64.tar.gz
	echo " Apply patches to PacMan..."
	#_enable_multilib
	#_enable_chaoticaur
	_enable_archlinuxcn
	_custom_mirrorlist
	_bypass_signature_check_level

	# Update arch linux in junest
	_JUNEST_CMD -- sudo pacman -Syy
	_JUNEST_CMD -- sudo pacman --noconfirm -Syu
}

if ! test -d "$HOME/.local/share/junest"; then
	printf -- "-----------------------------------------------------------------------------\n DOWNLOAD, INSTALL AND CONFIGURE JUNEST\n-----------------------------------------------------------------------------\n"
	_install_junest
else
	printf -- "-----------------------------------------------------------------------------\n RESTART JUNEST\n-----------------------------------------------------------------------------\n"
fi

##########################################################################################################################################################
#	INSTALL PROGRAMS USING YAY
##########################################################################################################################################################

_JUNEST_CMD -- yay -Syy
_JUNEST_CMD -- gpg --keyserver keyserver.ubuntu.com --recv-key C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF # UNCOMMENT IF YOU USE THE AUR

[ -f ../archimage-builder.sh ] && source ../archimage-builder.sh install "$@"

cd ..

##########################################################################################################################################################
#	APPDIR
##########################################################################################################################################################

[ -f ./archimage-builder.sh ] && source ./archimage-builder.sh appdir "$@"

##########################################################################################################################################################
#	APPRUN
##########################################################################################################################################################

rm -f AppDir/AppRun

# Set to "1" if you want to add Nvidia drivers manager in the AppRun
export NVIDIA_ON=1

[ -f ./archimage-builder.sh ] && source ./archimage-builder.sh apprun "$@"

# AppRun footer, here you can add options and change the way the AppImage interacts with its internal structure
cat <<-'HEREDOC' >> AppDir/AppRun

EXEC=$(grep -e '^Exec=.*' "${HERE}"/*.desktop | head -n 1 | cut -d "=" -f 2- | sed -e 's|%.||g')
if ! echo "$EXEC" | grep -q "/usr/bin"; then EXEC="/usr/bin/$EXEC"; fi

_JUNEST_CMD -- $EXEC "$@"

HEREDOC
chmod a+x AppDir/AppRun

##########################################################################################################################################################
#	COMPILE
##########################################################################################################################################################

[ -f ./archimage-builder.sh ] && source ./archimage-builder.sh compile "$@"

##########################################################################################################################################################
#	CREATE THE APPIMAGE
##########################################################################################################################################################

if test -f ./*.AppImage; then rm -Rf ./*archimage*.AppImage; fi

APPNAME=$(cat AppDir/*.desktop | grep '^Name=' | head -1 | cut -c 6- | sed 's/ /-/g')
REPO="VLC-appimage"
TAG="continuous-git"
UPINFO="gh-releases-zsync|$GITHUB_REPOSITORY_OWNER|$REPO|$TAG|*x86_64.AppImage.zsync"

echo "$VERSION" > ./version

_appimagetool() {
	if ! command -v appimagetool 1>/dev/null; then
		if [ ! -f ./appimagetool ]; then
			echo " Downloading appimagetool..." && curl -#Lo appimagetool https://github.com/AppImage/appimagetool/releases/download/continuous/appimagetool-"$ARCH".AppImage && chmod a+x ./appimagetool || exit 1
		fi
		./appimagetool "$@"
	else
		appimagetool "$@"
	fi
}

ARCH=x86_64 _appimagetool -u "$UPINFO" \
	AppDir "$APPNAME"_"$VERSION"-archimage5.0-x86_64.AppImage
