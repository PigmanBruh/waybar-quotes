![banner](https://github.com/PigmanBruh/waybar-quotes/assets/87263998/1e875c4f-39d3-4f8f-9be3-55958e0e2c6c)
# waybar-quotes
I originally wrote this to replace Hyprland's splash text thingy, but you can hook it up into anything, really.

### Features
- Ability to add, edit, or delete quotes yourself,
- Can be customized like any other waybar modules (font, color, etc.),
- Quote can be re-rolled by left-clicking the text

### Installation
- Open your terminal
- Navigate to `~/.local/share/`
- Clone this repo
- Add this to your auto-start entry
```
waybar -c ~/.config/waybar-quotes/config.jsonc -s ~/.config/waybar-quotes/style.css
```

The font i personally use here is [Outfit](https://fonts.google.com/specimen/Outfit)

### todos :
- add official support for eww
- add more blue archive quotes
- separate starting script and make it work with both eww and waybar