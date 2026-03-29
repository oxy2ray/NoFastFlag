MODPATH=${0%/*}

odm="/odm/etc/audio/audio_module_config_primary.xml"

# Manually handle odm mount, some meta module or magisk fork can mount odm, write conditional mounting later
mount --bind "$MODPATH$odm" "$odm"
ui_print "- Manually mounted $odm."