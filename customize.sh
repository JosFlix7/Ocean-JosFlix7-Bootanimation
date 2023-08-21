#Informacion para Magisk
AUTOMOUNT=true
SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=true
LATESTARTSERVICE=true

ui_print "*****************************************"
ui_print "   Ocean JosFlix7's Bootanimation"
ui_print "   For Any Custom ROM with Bootanimation"
ui_print "   located in system/product/media"
ui_print "*****************************************"

ui_print "- Descomprimiendo modulo."
unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2

ui_print "- Instalando Bootanimation."
REPLACE="
/system/product/media/bootanimation.zip
"

ui_print "- Ajustando permisos."
set_perm_recursive $MODPATH 0 0 0755 0644
