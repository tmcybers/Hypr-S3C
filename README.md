   <h1 align="center"> ☬тм¢увєя☬ Hypr S3C </h1>
<h1 align="center">
  <br>
  <a href="https://github.com/tmcybers/Hypr-S3C"><img src="assets/hypr-s3c.1.png" width="1500px" alt="hypr-s3c"></a>
  <a href="https://github.com/tmcybers/Hypr-S3C"><img src="assets/hypr-s3c.2.png" width="1500px" alt="hypr-s3c"></a>
  <a href="https://github.com/tmcybers/Hypr-S3C"><img src="assets/hypr-s3c.3.png" width="1500px" alt="hypr-s3c"></a>
</h1>

[![Website](https://img.shields.io/badge/GPU-Nvidia-red?style=for-the-badge&logo=nvidia)](https://twitter.com/tmcybers)
[![Website](https://img.shields.io/badge/WM-Hypr-brightgreen?style=for-the-badge&logo=linux)](https://tmcybers.github.io/)
[![Website](https://img.shields.io/badge/SHELL-zsh-green?style=for-the-badge&logo=linux)](https://medium.com/@tmcybers)
[![Website](https://img.shields.io/badge/PROMPT-STARSHIP-yellowgreen?style=for-the-badge&logo=linux)](https://twitter.com/tmcybers)
[![Website](https://img.shields.io/badge/LAUNCHER-wofi-yellow?style=for-the-badge&logo=linux)](https://twitter.com/tmcybers)
[![Website](https://img.shields.io/badge/TERMINAL-kitty-orange?style=for-the-badge&logo=linux)](https://twitter.com/tmcybers)


### Hypr-S3C

> Is the main idea on fully advanced tilling window manager and wayland based system, hyprland is the most futuristic tilling windows manager wayland based , and the most fluent and productive TWM, ideea behind is taking it to another level in terms of security and daily productivity is concerned, Hypr-S3C is in continuous development in implementations and improvements of appearance and speed of work, as well as implementations of cybersecurity tools and frameworks, all wayland supported and safe. 

#### Im pretty sure you are coming from Xorg: 

Wayland info (especially useful for Xorg users)

A Wayland compositor is a fully autonomous Display Server, like Xorg itself. It is not possible to mix’n’match Wayland compositors like you could on Xorg with window managers and compositors. It is also not entirely possible, nor recommended, to try and use all Xorg applications on Wayland. See this page for a list of recommended Wayland native/compatible programs.

*IMPORTANT: Wayland compositors should not be confused with Xorg window managers*

>> see more on [Hypr Wiki] (https://wiki.hyprland.org/)

>>> From here proceed, only with fresh vanilla installation on arch linux (recommended) also debian an gentoo are fully supported.

 ~~This is Hardware fully instalation, no VM's here, so take in account this~~
 
~~Im not fan of automatic things, the ideea behind here is the Learning~~

~~I have present an iso this year~~

>>>>> I Share knowledge. [![Website](https://img.shields.io/badge/Telegram-Private-brightgreen?style=flat-square&logo=telegram)](https://twitter.com/tmcybers)


# WIKI

* [Master Installation](#master-installation)
  * [Yay](#yay)
  * [Nvidia](#nvidia)
* [Hypr Master ](#hypr-master)
  * [tmcyber Hypr-S3C Master](#tmcyber-hypr-s3c-master)
   * [GTK Theme and Icons Master](#gtk-theme-and-icnos-master)
    * [S3C Tools with Black Arch Arsenal](#s3c-tools-with-black-arch-arsenal)
    * [Chromium S3C](#chromium-s3c)
     * [Rog Control Center](#rog-control-center)
 * [Patches](#patches)
 * [Extras](#extras)

## Master Installation

### Yay

> You can use pacman or paru, I like yay.
```
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# delete yay files after the completion (optional) 
cd .. && rm -rf yay
```


## Nvidia

*Nvidia only, proceed if you own an nvidia card, if not skip this master installation , and proceed above*

> IMPORTANT: Install nvidia from tty, dont'proceed with hypr.

**This is my personal conf\installation on nvidia, with modifications i did, ~~and skiping foolishness~~

*Hardware where i got to work nvidia and hypr, with no issues, i can cofirnm is running as `FIRE`:*

* Asus RogStrix G15 with NVIDIA GeForce RTX 3050 Laptop GPU
* Acer Nitro 5 with Nvidia Geforce GTX 1050 (mobile) Laptop GPU

Requirements\Dependencies:

```
linux-headers
base-devel
qt5-wayland
qt6-wayland
qt5ct
qt6ct 
libva 
```

Proceed with nvida:

```
libva-nvidia-driver-git
nvidia-dkms
```

Add modules for nvidia:

```
cd /etc/mkinitcpio.conf
sudo neovim mkinitcpio.conf
```
> if mkinitcpio.conf is not there, create it.

Add this into MODULES=() exactly like this, into brackets: 

```
nvidia nvidia_modeset nvidia_uvm nvidia_drm
```

Create the Image:

```
sudo mkinitpcio -P linux
```

IMPORTANT: 
>> If you have `linut-lts`, `linux-zen` use: `sudo mkinitpcio -P linux-lts` , and asap.

Now final Important step:

> If nvidia.conf is not there, make `touch nvidia.conf`  and ready.

```
cd /etc/modprobe.d/nvidia.conf
sudo neovim nvidia.conf
```

Add this:

```
options nvidia-drm modeset=1
```


**Nvidia Env**

> Add this into your hypr.conf.

>> Proceed with caution with this variables, you can broke hypr from loading.

>>>>> `GMB_BACKEND` in usualy not working good in my case, proceed if you know what are you doing.

```
# Nvidia Only
env = LIBVA_DRIVER_NAME,nvidia
env = XDG_SESSION_TYPE,wayland
env = __GL_GSYNC_ALLOWED, 0
#env = GBM_BACKEND,nvidia-drm  # high risk, use it at your own risk.
env = __GLX_VENDOR_LIBRARY_NAME,nvidia
env = WLR_NO_HARDWARE_CURSORS,1
```

>>> Take in account that u must reboot after all this, but proceed with hypr master install and all dependencies and `reboot` later, but dont'forget it!


## Hypr Master

| Type | Package(s) |
| ----------- | ----------- |
| Hyprland Dependencies | hyprland-git qt5-wayland qt5ct qt6-wayland qt6ct qt5-svg qt5-quickcontrols2 qt5-graphicaleffects gtk3 polkit-gnome pipewire wireplumber gvfs |
| Library and Depend(s) |  python-requests pacman-contrib  jq gcc12  |
| Clipboard | wl-clipboard cliphist |
| Bar | waybar-hyprland-git |
| Launcher | wofi-git |
| Lock-Screen | swaylock-effects |
| XDG Desktop Portal  | xdg-desktop-portal-hyprland-git |
| Wallpaper Setter | hyprpaper-git |
| Terminal | kitty |
| Notification(s) | dunst |
| Audio | pamixer pavucontrol pipewire-pulse |
| Bluetooth |  bluez bluez-utils blueman |
| Brightness (only Laptop) |  brightnessctl |
| Network Manager | network-manager-applet |
| Archive Explorer | ranger |
| Themer | nwg-look |
| Screen Capture and Tools | grimblast-git slurp swappy |
| Audio Player | mpv |
| Log-Out Manager | wlogout |
| Browser | chromium |
| Fonts | ttf-font-awesome otf-font-awesome|
| Icons | ttf-nerd-fonts-symbols ttf-font-icons sway-dynamic-names-git |
| Opcional Archive Explorer GUI | thunar thunar-archive-plugin file-roller fmpegthumbnailer |

> With all this installed, now you can reboot, and login into Hyprland.

~~Take in account that im not using login manager, like sddm or others, i use tty, im not fan of login managers and GUI stuffs~~

## tmcyber Hypr-S3C Master

~~Mi wiki with additionals stuff(s), and tools~~

~~Opcional, it's not mandatory~~

| Type | Package(s) |
| ----------- | ----------- |
| Extra Fonts | noto-fonts-emoji nerd-fonts-complete-mono-glyphs ttf-nerd-fonts-symbols-commons papirus-icon-theme dunst otf-sora ttf-nerd-fonts-symbols-common otf-firamono-nerd inter-font ttf-fantasque-nerd noto-fonts noto-fonts-emoji ttf-comfortaa ttf-jetbrains-mono-nerd ttf-icomoon-feather ttf-iosevka-nerd adobe-source-code-pro-fonts|
| Extra Icons | https://github.com/Templarian/MaterialDesign-Font |
| Extra Themes | nordic-theme 
| Mail | thunderbird |
| Fetch | nitch |
| Misc | btop | lsd bat btop tldr stow wl-clipboard unzip yt-dlp |
| RSS News | newsboat |
| Shell | zsh |
| Terminal Tunning | starship |
| Networking | net-tools |
| Multipurpose relay | socat |
| Coder | visual-studio-code-bin |
| Editor Coder | geany |
| Text Editor | neovim |
| Anonymizing  | tor torsocks onionshare |
| VPN | Mullvad |
| Latest Cyber News | https://github.com/tmcybers/Latest-Cyber-News |
| Socks | python-pysocks shadowsocks |
| Recorder | wf-recorder |
| Stream | obs-studio |
| Plugin for Voice | noise-suppression-for-voice  |

## GTK Theme and Icons Master

> I use `nwg-look` and `xfce4-settings` to apply the theme and icons.

```
cd ~/Downloads
git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git

# Installs theme
sudo cp -r Tokyo-Night-GTK-Theme/themes/Tokyonight-Dark-BL-LB /usr/share/themes/

# Installs icons
sudo cp -r Tokyo-Night-GTK-Theme/icons/Tokyonight-Dark /usr/share/icons/

# Deletes folder
rm -r Tokyo-Night-GTK-Theme/
```

## S3C Tools with Black Arch Arsenal

~~All Hacking tools from one script over arch~~

~~Im not fan of kali and parrot they are privative, i usualy do my own job~~

Install script:

```
curl -O https://blackarch.org/strap.sh
```

Check hash:

```
sha1sum strap.sh
```
Permissions:

```
chmod +x strap.sh
```

Execute:

```
sudo ./strap.sh
```

Edit mirrors:
```
sudo neovim /etc/pacman.d/blackarch-mirrorlist
```

~~I always use germany mirror, never was failled. Choose based on your location, choose one near you~~

**IMPORTANT**

Update:
```
sudo pacman -Syy
```

>> Ready! We already have the Blackarch arsenal within our reach, but we are not done yet. We must uncomment the Multilib repo to install some tools properly.

*Basic commands*

>>> Use pacman or yay, yay is the most updated always.

> Install all black arch tools
```
$ pacman -S blackarch
```
> List all available arsenal
```
$pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u
```
> List available groups.
```
$pacman -Sg | Anonymizing grep blackarch
```
> List the tools that make up each group (p/e wireless).
```
$ pacman -Sg blackarch-wireless
```
> Install a complete set of tools.
```
$ sudo pacman -S blackarch-wireless
```
> Install a package from the Blackarch repo. This command is useful when you need a package from a specific repo.
```Patch
$ sudo pacman -S blackarch/nmap
```

# Chromium S3C

> Chrome Store:
```
NoScript
UBlock Origin
Privacy Badger
Smart HTTPS
Luminous: Javascript Events Blocker
Privacy Settings
```

Good Practices:

>> Block third-party cookies
>>> Clean History when leave.



# Rog Control Center

> Only if you own a Rog Strix , if not skip this.

[Asus Linux](https://asus-linux.org/supergfxctlgex/)





# Patches

Patch for Flickering/Glitching on  Second Monitors on Nvidia:
```
hyprland-nvidia (AUR)
hyprland-nvidia-git (AUR)
```
> If is asking for Replace `hyprland-git` with `hyprland-nvidia-git` , say Yes.



### Extras 

*Icons for waybar/starship*

[FontAwesome](https://fontawesome.com/v6/search?o=r&m=free)

Extra Pumping Icons [TopTal](https://www.toptal.com/designers/htmlarrows/) 
[Solid](https://fontawesome.com/v5/cheatsheet/free/solid)


#### Wallpapers

[WallP](https://www.pxfuel.com/)


#### Colors

[encycolorpedia](https://encycolorpedia.es/)




# References

* Official Hyprland GitHub: https://github.com/hyprwm/Hyprland
