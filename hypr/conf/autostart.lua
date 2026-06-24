-- ~/.config/hypr/conf/autostart.lua

hl.on("hyprland.start", function()
    -- Demonios y componentes base
    hl.exec_cmd("~/.config/hypr/scripts/xdg-portal-hyprland")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    
    -- Aplicaciones del sistema
    hl.exec_cmd("waybar")
    hl.exec_cmd("blueman-applet")
    hl.exec_cmd("nm-applet --indicator")
    
    -- Fondos de pantalla
    hl.exec_cmd("awww-daemon")
end)

-- Comandos que se ejecutan en cada recarga (antiguo exec=)
hl.exec_cmd("~/.config/hypr/scripts/bgaction")