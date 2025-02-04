![Header](https://imgur.com/eszGk3V.png)
    
> [!NOTE]
> This isn't being maintained for general use. It's not meant to work out-of-the-box in *any* environment except my own.

## Installation

1. **Set Up Base System**

2. **Install Essential Applications**

   - `vim`
   - `git`
   - `zsh`
   - `kitty`
   - `firefox`
   - `sddm` or `gdm` (todo)

3. **Set Up Hyprland**

   Follow the [Hyprland installation instructions](https://wiki.hyprland.org/Hyprland-Installation) and don't forget additional packages such as:

   - `qt5-wayland`
   - `qt6-wayland`
   - `xdg-desktop-portal`

4. **Required Packages for the Hyprland Config**

   - `dunst`
   - `waybar`
   - `nautilus`
   - `bibata-cursor-themes`
   - `hyprlock`
   - `rofi-wayland`
   - `flameshot`
   - `pipewire-pulse`
   - `pavucontrol`
   - `fzf`
   - `zoxide`
   - `fastfetch`
   - `imagemagick`

5. **Install Fonts**

   - `Roboto Mono` (you may also use Roboto Mono Nerd [`ttf-roboto-mono-nerd` on arch] but will have to change the kitty config

6. **Configure zsh**

> [!NOTE]
> zsh plugins are currently being sourced from `~/.config/zsh-*/zsh-*(.plugin).zsh`.

7. **Configure Vim**

   - If vim doesn't find it's configs, you can run `echo "source ~/.config/vim/vimrc" > ~/viTmp && mv ~/viTmp ~/.vimrc`

8. **Install Additional Packages**

    Such as

   - `github-cli`
   - `7zip`
   - `mpv`
   - `viewnior`
   - `foliate`
   - `hypridle`
   - `hyprshade`
   - `lxappearance`
   - `gnome-calculator`
   - `yt-dlp`
   - `bottom`
   - `ncdu`
   - `bat`

   ...and any others you wish.

9. **Clone Configuration Files**

   - Clone the configuration files from the repository.
   - Change shell to zsh.

