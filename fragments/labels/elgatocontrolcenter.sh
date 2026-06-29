elgatocontrolcenter)
    name="Elgato Control Center"                                     # ❗ Bundle-Name prüfen: ls /Applications | grep -i control
    type="zip"                                                       # ❗ muss zur Dateiendung der fileURL passen (.zip vs .pkg)
    elgatoJSON=$(curl -fsSL "https://gc-updates.elgato.com/mac/eccm-update/final/app-version-check.json")  # ❗ Endpoint testen
    appNewVersion=$(getJSONValue "$elgatoJSON" "Automatic.Version")
    downloadURL=$(getJSONValue "$elgatoJSON" "Automatic.fileURL")
    appCustomVersion() { version=$(defaults read "/Applications/${name}.app/Contents/Info.plist" CFBundleShortVersionString 2>/dev/null); build=$(defaults read "/Applications/${name}.app/Contents/Info.plist" CFBundleVersion 2>/dev/null); echo "${version}.${build}"; }
    expectedTeamID="Y93VXCB8Q5"
    blockingProcesses=( "Elgato Control Center" )                    # ❗ Prozessname prüfen
    # Fallback (kombinierter Feed):
    # elgatoJSON=$(curl -fsSL "<URL-des-kombinierten-Feeds>")
    # downloadURL=$(getJSONValue "$elgatoJSON" '["cc-mac"].downloadURL')
    # appNewVersion=$(getJSONValue "$elgatoJSON" '["cc-mac"].version')   # -> "1.8.2"
    ;;
