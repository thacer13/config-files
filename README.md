![Header](https://imgur.com/eszGk3V.png)
    
> [!NOTE]
> This isn't being maintained for general use. It's not meant to work out-of-the-box in *any* environment except my own.

## Installation

1. **Set Up Base System & Essential Applications**

   Such as

   - `vim`
   - `git`
   - `pipewire`
   - `kitty`
   - `firefox`

2. **Hyprland**

   Please read the [Hyprland installation instructions](https://wiki.hyprland.org/Getting-Started/Installation/).

   ```
   sudo pacman -S xdg-desktop-portal-hyprland qt5-wayland qt6-wayland polkit-kde-agent
   ```

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
   `flameshot`\*
   `ttf-roboto-mono-nerd`
   `ttf-meslo-nerd`
   `gnome-themes-extra`
   `lxappearance`
   
   \*to be replaced with grimblast soon

> **About zsh & vim**
> 
>zsh plugins are currently being sourced from `~/.config/zsh-*/zsh-*(.plugin).zsh`.
> 
>If vim doesn't find it's configs, you can run `echo "source ~/.config/vim/vimrc" > ~/viTmp && mv ~/viTmp ~/.vimrc`

4. **Clone Configuration Files**

   - Clone the configuration files from the repository.
   - Change shell to zsh: `chsh -s $(which zsh)`

5. **Install Additional Packages**

   Such as

   - `7zip` `mpv` `viewnior` `foliate` `gnome-calculator` `gnome-text-editor` `github-cli` `yt-dlp` `qbittorrent` `stow` `bottom` `ncdu` `hypridle` `hyprpaper` `hyprshade`***(AUR)*** `bibata-cursor-theme`***(AUR)*** 


   ...and any others you wish.

