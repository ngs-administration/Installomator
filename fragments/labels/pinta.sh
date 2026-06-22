pinta)
    name="pinta"
    type="dmg"
    appName="Pinta"
    downloadURL="https://github.com/PintaProject/Pinta/releases/latest/download/Pinta-macos-arm64.dmg"
    appNewVersion=$(curl -sfL "https://api.github.com/repos/PintaProject/Pinta/releases/latest" \
        | grep '"tag_name"' \
        | sed 's/.*"tag_name": *"\([^"]*\)".*/\1/')
    expectedTeamID="D5G6C56TBH"
    ;;