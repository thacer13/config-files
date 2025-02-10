![Header](https://imgur.com/eszGk3V.png)
    
> [!NOTE]
> This isn't intended to work out-of-the-box in *any* environment except my own.

## Installation

1. **Set Up Base System & Essential Applications**
   
   - `pipewire`
   - `vim`
   - `git`
   - `kitty`
   - `firefox`

2. **Hyprland**

   Please read the [Hyprland installation instructions](https://wiki.hyprland.org/Getting-Started/Installation/). *For now, using UWSM will require multiple changes to the config.*

   ```
   sudo pacman -S xdg-desktop-portal-hyprland qt5-wayland qt6-wayland polkit-kde-agent
   ```

3. **Install required Packages for the Hyprland Config**

   ```
   sudo pacman -S --needed libnotify dunst waybar zsh nautilus hyprlock rofi-wayland pipewire-pulse pavucontrol fzf zoxide eza bat fastfetch imagemagick wlsunset wl-clipboard grim slurp jq hyprpicker ttf-roboto-mono-nerd ttf-meslo-nerd gnome-themes-extra
   ```
   `libnotify`
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
   `eza`
   `bat`
   `fastfetch`
   `imagemagick`
   `wlsunset`
   `wl-clipboard`
   `grim`
   `slurp`
   `jq`
   `hyprpicker`
   `ttf-roboto-mono-nerd`
   `ttf-meslo-nerd`
   `gnome-themes-extra`

> **About zsh & vim**
> 
>zsh plugins are currently being sourced from `~/.config/zsh-*/zsh-*(.plugin).zsh`.
> 
>If vim doesn't find its configs, you can run `echo "source ~/.config/vim/vimrc" > ~/viTmp && mv ~/viTmp ~/.vimrc`

4. **Clone Configuration Files**

   - Clone the configuration files from the repository.
   - Change shell to zsh: `chsh -s $(which zsh)`

5. **Install Additional Packages**

   Such as

   - `stow` `mpv` `viewnior` `foliate` `gnome-calculator` `gnome-text-editor` `github-cli` `yt-dlp` `7zip` `qbittorrent` `bottom` `ncdu` `hypridle` `hyprpaper` `bibata-cursor-theme`***(AUR)*** 


   ...and any others you wish.

