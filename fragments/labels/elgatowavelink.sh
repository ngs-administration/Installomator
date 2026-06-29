 elgatowavelink)
    name="Elgato Wave Link"                                          # ❗ Bundle-Name prüfen: ls /Applications | grep -i wave
    type="dmg"                                                       # CDN liefert .dmg
    elgatoJSON=$(curl -fsSL "https://gc-updates.elgato.com/mac/ewlm-update/final/app-version-check.json")  # ❗ Endpoint testen
    appNewVersion=$(getJSONValue "$elgatoJSON" "Automatic.Version")
    downloadURL="https://gc-updates.elgato.com/mac/ewlm-update/final/download-website.php"
    appCustomVersion() { version=$(defaults read "/Applications/${name}.app/Contents/Info.plist" CFBundleShortVersionString 2>/dev/null); build=$(defaults read "/Applications/${name}.app/Contents/Info.plist" CFBundleVersion 2>/dev/null); echo "${version}.${build}"; }
    expectedTeamID="Y93VXCB8Q5"
    blockingProcesses=( "Wave Link" )                                # ❗ Prozessname prüfen
    # Fallback (kombinierter Feed, nur Kurzversion -> Versionsvergleich unzuverlässig):
    # elgatoJSON=$(curl -fsSL "<URL-des-kombinierten-Feeds>")
    # downloadURL=$(getJSONValue "$elgatoJSON" '["wave-link-3-mac"].downloadURL')
    # appNewVersion=$(getJSONValue "$elgatoJSON" '["wave-link-3-mac"].version')   # -> "3.2", NICHT "3.2.0.2698"
    ;;
