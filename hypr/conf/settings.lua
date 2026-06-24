-- ~/.config/hypr/conf/settings.lua

hl.config({
    input = {
        kb_layout = "us,es",
        kb_options = "grp:rctrl_rshift_toggle",
        follow_mouse = 1,
        touchpad = {
            natural_scroll = false
        },
        sensitivity = 0
    },
    
    general = {
        gaps_in = 5,
        gaps_out = 10,
        border_size = 2,
        ["col.active_border"] = "rgb(cdd6f4)",
        ["col.inactive_border"] = "rgba(595959aa)",
        layout = "dwindle"
    },

    misc = {
        disable_hyprland_logo = true
    },

    decoration = {
        rounding = 5,
        blur = {
            enabled = true,
            size = 7,
            passes = 4,
            new_optimizations = true,
            ignore_opacity = false
        },
        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)"
        }
    },

    animations = {
        enabled = true,
        bezier = {
            "myBezier, 0.10, 0.9, 0.1, 1.05"
        },
        animation = {
            "windows, 1, 10, myBezier, slide",
            "windowsOut, 1, 7, myBezier, slide",
            "border, 1, 10, default",
            "fade, 1, 7, default",
            "workspaces, 1, 6, default"
        }
    },

    dwindle = {
        preserve_split = true
    },

    master = {
        mfact = 0.6,
        new_on_top = true
    },

    -- Dispositivos específicos (No explotará si el "epic mouse V1" se desconecta gracias a pcall)
    device = {
        {
            name = "epic mouse V1",
            sensitivity = -0.5
        }
    }
})