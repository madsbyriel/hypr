#!/usr/bin/env bash
MENU_CMD="${1:-wofi} --dmenu --prompt 'Theme Menu'}"

choice=$(printf "Gruvbox\nCatppuccin" | eval "$MENU_CMD")

case "$choice" in
    Catppuccin)
        ln -fs ~/.config/hypr/catppuccin/theme.conf ~/.config/hypr/theme.conf
        ;;
    Gruvbox)
        ln -fs ~/.config/hypr/gruvbox/theme.conf ~/.config/hypr/theme.conf
        ;;
esac
