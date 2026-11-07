-- ~/.config/hypr/conf/windowrules.lua

-- Reglas de Flotación
hl.window_rule({ match = { class = ".*" }, float = true })
hl.window_rule({ match = { class = "kitty" }, float = false })
hl.window_rule({ match = { class = "chromium" }, float = false })
hl.window_rule({ match = { class = "com.microsoft.VSCode" }, float = false })
hl.window_rule({ match = { class = "steam", title = "Steam" }, float = false })
hl.window_rule({ match = { class = "ONLYOFFICE.*"}, float = false })

-- Reglas de Opacidad
hl.window_rule({ match = { class = "kitty" }, opacity = "0.7" })
hl.window_rule({ match = { class = "thunar" }, opacity = "0.7" })
hl.window_rule({ match = { float = true }, opacity = "0.9" })
hl.window_rule({ match = { class = "com.microsoft.VSCode" }, opacity = "0.9" })

-- Reglas de Animación y Posición
hl.window_rule({ match = { class = "kitty", title = "update-sys" }, animation = "popin" })
hl.window_rule({ match = { class = "thunar" }, animation = "popin" })
hl.window_rule({ match = { class = "chromium" }, animation = "popin" })
hl.window_rule({ match = { class = "wofi" }, animation = "slide" })
hl.window_rule({ match = { class = "wofi", title = "clippick" }, move = "100%-433 53" })
