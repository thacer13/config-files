![Header](https://i.imgur.com/Lu2dBCL.png)
    
> [!NOTE]
> You will have to make tweaks and adaptations. This config doesn't have out-of-the-box public usage in mind.

## Installation

1. **Set Up Base System & Essential Applications**
   
   - `pipewire`
   - `kitty`
   - `firefox`
   - `git`
   - `helix`
   - `hyprland`

2. **Hyprland**

   Please read the [Hyprland installation instructions](https://wiki.hyprland.org/Getting-Started/Installation/). *For now, using UWSM will require multiple changes to the config.*

   ```
   sudo pacman -S xdg-desktop-portal-hyprland qt5-wayland qt6-wayland hyprpolkitagent
   ```

3. **Install required Packages for the config**

   ```
   sudo pacman -S --needed less which stow libnotify dunst waybar zsh nautilus featherpad hyprlock hyprpaper hypridle rofi-wayland pipewire-pulse pavucontrol fzf zoxide eza bat-extras fastfetch imagemagick impala wlsunset wl-clipboard grim slurp jq hyprpicker ttf-roboto-mono-nerd ttf-iosevka-nerd ttf-meslo-nerd noto-fonts-emoji adobe-source-han-sans-jp-fonts
   ```
   `less`
   `which`
   `stow`
   `libnotify`
   `dunst`
   `waybar`
   `zsh`
   `nautilus`
   `featherpad`
   `hyprlock`
   `hyprpaper`
   `hypridle`
   `rofi-wayland`
   `pipewire-pulse`
   `pavucontrol`
   `fzf`
   `zoxide`
   `eza`
   `bat-extras`
   `fastfetch`
   `imagemagick`
   `impala`
   `wlsunset`
   `wl-clipboard`
   `grim`
   `slurp`
   `jq`
   `hyprpicker`
   `ttf-roboto-mono-nerd`
   `ttf-iosevka-nerd`
   `ttf-meslo-nerd`
   `noto-fonts-emoji`
   `adobe-source-han-sans-jp-fonts`

>zsh plugins are currently being sourced from `~/.config/zsh-*/zsh-*(.plugin).zsh`.

4. **Clone Configuration Files**

   - Clone the repository into your home.
   - Change shell to zsh: `chsh -s $(which zsh)` and reboot to apply.
   - Consider setting up AUR and flatpak

5. **Install Additional Packages**

   Such as

   - `wget` `yt-dlp` `7zip` `qbittorrent` `btop` `ncdu` `tealdeer` `mpv` `viewnior` `foliate` `obsidian` `gimp` `wine` `gnome-calculator` `yazi` `wireplumber` `papirus-icon-theme` `bibata-cursor-theme`***(AUR)*** `zen-browser-bin`***(AUR)*** `obs-studio`***(flatpak)***

   Development specific:
    
   - `gcc` `clang` `cmake` `cpio` `meson` `bash-language-server` `base-devel` `github-cli` `pkgconfig`

   ...or any others you wish.

6. **Stow**
   - Stow everything from within the repo with `stow -t --adopt ~ . && git reset --hard`. If need to unstow, run `stow -D -t ~ .`
