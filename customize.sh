ui_print "┌──────────────────────────────────────┐"
ui_print "│       🌲 Tree-ndk Installer 🌲       │"
ui_print "├──────────────────────────────────────┤"
ui_print "│ Multi-Arch Directory Viewer v1.0.2   │"
ui_print "│ Author: Avraham Freeman              │"
ui_print "└──────────────────────────────────────┘"

ABI=$(getprop ro.product.cpu.abi)
TARGET="$MODPATH/system/bin/tree"

ui_print "- Detected architecture: $ABI"

case "$ABI" in
  arm64-v8a) BIN="arm64-v8a/tree" ;;
  armeabi-v7a) BIN="armeabi-v7a/tree" ;;
  x86) BIN="x86/tree" ;;
  x86_64) BIN="x86_64/tree" ;;
  *)
    abort "- Unsupported architecture: $ABI"
    ;;
esac

mkdir -p "$(dirname "$TARGET")"
cp -af "$MODPATH/system/bin/$BIN" "$TARGET"

if [ -f "$TARGET" ]; then
  set_perm "$TARGET" 0 0 0755
  ui_print "- Installed: $TARGET"
  ui_print "- Permissions set to 0755"
else
  abort "- ❌ Error: tree binary not found after copy"
fi

ui_print "- ✅ Installation complete."
