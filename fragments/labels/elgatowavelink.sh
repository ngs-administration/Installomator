elgatowavelink)
    name="Elgato Wave Link"
    type="dmg"
    appName="Elgato Wave Link"
    appNewVersion=$(curl -sfL \
        -H "User-Agent: ElgatoWaveLink/3.2.0 CFNetwork/1494.0.7 Darwin/23.4.0" \
        "https://gc-updates.elgato.com/macos/ewlm-update/stable/app-version-check.json" \
        | grep -o '"Version":"[^"]*"' | head -1 | cut -d'"' -f4)
    downloadURL=$(curl -sfL \
        -H "User-Agent: ElgatoWaveLink/3.2.0 CFNetwork/1494.0.7 Darwin/23.4.0" \
        "https://gc-updates.elgato.com/macos/ewlm-update/stable/app-version-check.json" \
        | grep -o '"fileURL":"[^"]*"' | head -1 | cut -d'"' -f4)
    expectedTeamID="Y93VXCB8Q5"
    ;;