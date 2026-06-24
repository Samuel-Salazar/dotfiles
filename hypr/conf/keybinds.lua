-- ~/.config/hypr/conf/keybinds.lua

local mainMod = "SUPER"

-- == APLICACIONES Y COMANDOS (exec_cmd) ==
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("swaylock"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("wlogout --protocol layer-shell"))
hl.bind(mainMod .. " + SHIFT + M", hl.dsp.exit())
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("thunar"))
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd("pkill wofi || wofi -n"))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("grim -g \"$(slurp)\" - | swappy -f -"))

-- == SISTEMA Y VENTANAS ==
hl.bind(mainMod .. " + F4", hl.dsp.window.close())
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
-- hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit")) -- (Descomentar si usas togglesplit)

-- == FOCO ==
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- == ESPACIOS DE TRABAJO (1-10) ==
for i = 1, 9 do
    hl.bind(mainMod .. " + " .. i, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

-- == NAVEGACIÓN Y SCROLL ==
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- == RATÓN ==
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- == TECLAS ESPECIALES DE HARDWARE ==
hl.bind("code:121", hl.dsp.exec_cmd("pamixer -t"))
hl.bind("code:122", hl.dsp.exec_cmd("pamixer -d 5"))
hl.bind("code:123", hl.dsp.exec_cmd("pamixer -i 5"))
hl.bind("code:256", hl.dsp.exec_cmd("pamixer --default-source -t"))
hl.bind("code:232", hl.dsp.exec_cmd("brightnessctl set 10%-"))
hl.bind("code:233", hl.dsp.exec_cmd("brightnessctl set 10%+"))
hl.bind("code:237", hl.dsp.exec_cmd("brightnessctl -d asus::kbd_backlight set 33%-"))
hl.bind("code:238", hl.dsp.exec_cmd("brightnessctl -d asus::kbd_backlight set 33%+"))
hl.bind("code:210", hl.dsp.exec_cmd("asusctl led-mode -n"))