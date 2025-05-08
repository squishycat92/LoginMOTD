# Generates and prints the MOTD
MACOS_CODENAME=$(awk '/SOFTWARE LICENSE AGREEMENT FOR macOS/' '/System/Library/CoreServices/Setup Assistant.app/Contents/Resources/en.lproj/OSXSoftwareLicense.rtf' | awk -F 'macOS ' '{print $NF}' | awk '{print substr($0, 0, length($0)-1)}')

MACOS_VERSION="$(sw_vers -ProductName) $MACOS_CODENAME $(sw_vers -ProductVersion)"
KERNEL_VERSION="$(uname -s) $(uname -r) $(uname -m)"
MAC_MODEL_NAME=$(system_profiler SPHardwareDataType | awk -F ': ' '/Model Name/ {print $2}')
MAC_MODEL_ID=$(system_profiler SPHardwareDataType | awk -F ': ' '/Model Identifier/ {print $2}')

echo ""
echo "Welcome to $MACOS_VERSION ($KERNEL_VERSION) on $MAC_MODEL_NAME ($MAC_MODEL_ID)"
echo " * Release Notes:     https://developer.apple.com/documentation/macos-release-notes"
echo " * Support:           https://support.apple.com/mac"
echo ""

# Changes the console prompt to use $ instead of the default %
# The default is PS1="%n@%m %1~ %# " or PROMPT="%n@%m %1~ %# "
# You can find this for yourself using cat /etc/zshrc
PROMPT='%n@%m %1~ %(!.#.$) '