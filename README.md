![Header](https://imgur.com/eszGk3V.png)
    
> [!NOTE]
> This isn't being maintained for general use. It's not meant to work out-of-the-box in *any* environment except my own.

## Installation

1. **Set Up Base System & Install Essential Applications**

   Such as

   - `vim`
   - `git`
   - `pipewire`
   - `kitty`
   - `firefox`
   - `sddm` or `gdm`

2. **Set Up Hyprland**

   Follow the [Hyprland installation instructions](https://wiki.hyprland.org/Getting-Started/Installation/) and don't forget additional packages such as:

   - `xdg-desktop-portal-hyprland` `qt5-wayland` `qt6-wayland` `polkit-kde-agent`

3. **Required Packages for the Hyprland Config**

   ```
   sudo pacman -S --needed dunst waybar zsh nautilus hyprlock rofi-wayland pipewire-pulse pavucontrol fzf zoxide bat fastfetch imagemagick wl-clipboard grim slurp jq hyprpicker ttf-roboto-mono-nerd ttf-meslo-nerd gnome-themes-extra lxappearance
   ```
   `dunst`
   `waybar`
   `zsh`
   `nautilus`
   `hyprlock`
   `rofi-wayland`
   `pipewire-pulse`
   `pavucontrol`
   `fzf`
   `zoxide`
   `bat`
   `fastfetch`
   `imagemagick`
   `flameshot`

4. **Install Fonts & Themes**

   - `ttf-roboto-mono-nerd` `ttf-meslo-nerd` `gnome-themes-extra` `lxappearance` `bibata-cursor-theme`***(AUR)*** 

5. **Configure zsh & vim**

   - zsh plugins are currently being sourced from `~/.config/zsh-*/zsh-*(.plugin).zsh`.

   - If vim doesn't find it's configs, you can run `echo "source ~/.config/vim/vimrc" > ~/viTmp && mv ~/viTmp ~/.vimrc`

6. **Clone Configuration Files**

   - Clone the configuration files from the repository.
   - Change shell to zsh: `chsh -s $(which zsh)`

7. **Install Additional Packages**

   Such as

   - `7zip` `mpv` `viewnior` `foliate` `gnome-calculator` `github-cli` `yt-dlp` `qbittorrent` `bottom` `ncdu` `hypridle` `hyprpaper` `hyprshade`***(AUR)***

   ...and any others you wish.

