elgatocontrolcenter)
    name="Elgato Control Center"
    type="zip"
    appName="Elgato Control Center"
    appNewVersion=$(curl -sfL \
        -H "User-Agent: ElgatoControlCenter/1.8.2 CFNetwork/1494.0.7 Darwin/23.4.0" \
        "https://gc-updates.elgato.com/macos/eccm-update/stable/app-version-check.json" \
        | grep -o '"Version":"[^"]*"' | head -1 | cut -d'"' -f4)
    downloadURL="https://edge.elgato.com/egc/macos/eccm/${appNewVersion}/ElgatoControlCenter-${appNewVersion}.20643.zip"
    expectedTeamID="Y93VXCB8Q5"
    ;;