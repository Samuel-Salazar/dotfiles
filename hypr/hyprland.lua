-- ~/.config/hypr/hyprland.lua

-- Lista de módulos de tu configuración
local modules = {
    "conf.monitors",
    "conf.autostart",
    "conf.settings",
    "conf.windowrules",
    "conf.keybinds"
}

-- Bucle protegido (failsafe): Carga cada módulo de forma independiente.
-- Si un archivo tiene un error (ej. dispositivo no encontrado), no tirará todo Hyprland abajo.
for _, module in ipairs(modules) do
    local success, err = pcall(require, module)
    if not success then
        print("error loading module: " .. module .. "\nDetails: " .. err)
    end
end