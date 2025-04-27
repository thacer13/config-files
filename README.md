![Header](https://i.imgur.com/Lu2dBCL.png)
    
> [!NOTE]
> This isn't intended to work out-of-the-box in *any* environment except my own.

## Installation

1. **Set Up Base System & Essential Applications**
   
   - `pipewire`
   - `kitty`
   - `firefox`
   - `git`
   - `helix`

2. **Hyprland**

   Please read the [Hyprland installation instructions](https://wiki.hyprland.org/Getting-Started/Installation/). *For now, using UWSM will require multiple changes to the config.*

   ```
   sudo pacman -S xdg-desktop-portal-hyprland qt5-wayland qt6-wayland polkit-kde-agent
   ```

3. **Install required Packages for the config**

   ```
   sudo pacman -S --needed less libnotify dunst waybar zsh nautilus hyprlock hyprpaper hypridle rofi-wayland pipewire-pulse pavucontrol fzf zoxide eza bat-extras fastfetch imagemagick impala wlsunset wl-clipboard grim slurp jq hyprpicker ttf-roboto-mono-nerd ttf-meslo-nerd noto-fonts-emoji adobe-source-han-sans-jp-fonts
   ```
   `less`
   `libnotify`
   `dunst`
   `waybar`
   `zsh`
   `nautilus`
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
   `ttf-meslo-nerd`
   `noto-fonts-emoji`
   `adobe-source-han-sans-jp-fonts`

>zsh plugins are currently being sourced from `~/.config/zsh-*/zsh-*(.plugin).zsh`.

4. **Clone Configuration Files**

   - Clone the configuration files from the repository.
   - Change shell to zsh: `chsh -s $(which zsh)`
   - Consider setting up AUR and flatpak

5. **Install Additional Packages**

   Such as

   - `wget` `stow` `github-cli` `yt-dlp` `7zip` `qbittorrent` `btop` `ncdu` `tealdeer` `mpv` `viewnior` `foliate` `obsidian` `gimp` `wine` `gnome-calculator` `yazi` `wireplumber` `papirus-icon-theme` `bibata-cursor-theme`***(AUR)*** `zen-browser-bin`***(AUR)*** `obs-studio`***(flatpak)***


   ...and any others you wish.

6. **Language specific packages**
   - `gcc` `clang` `fpc` `bash-language-server`
