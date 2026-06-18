#!/bin/bash
# Detectar layout activo
active=$(hyprctl devices -j | jq -r '.keyboards[] | select(.main).active_keymap')

# Extraer abreviación si está entre paréntesis
abbr=$(echo "$active" | grep -oP '(?<=\().*(?=\))')

# Si no hay paréntesis, tomar primeras 2 letras y pasarlas a mayúscula
if [ -z "$abbr" ]; then
  abbr=$(echo "$active" | cut -c1-2 | tr '[:lower:]' '[:upper:]')
fi


# Salida en formato JSON para Waybar
echo "{\"text\": \"$abbr\", \"tooltip\": \"Available: Englis Spanish\\nChange: RigthCtrl + Rigth Shift\"}"
