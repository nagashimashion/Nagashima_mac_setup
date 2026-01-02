# Brewfile for Clean Install (Password-Heavy First)

# ----------------------------------------
# 0. Pre-requisites (Taps & Formulas)
# ----------------------------------------
brew "mas"      # App Store apps dependency
brew "fnm"      # Node.js
brew "uv"       # Python
brew "pyenv"    # Python (Legacy)
brew "ffmpeg"
brew "sl"

# ----------------------------------------
# 1. Password Required Apps (Sudo Heavy)
# ----------------------------------------
# これらはインストーラー権限が必要なため、実行直後にパスワードを求められます。
# 最初にまとめて認証してしまう作戦。

cask "docker-desktop"
cask "karabiner-elements"
cask "hhkb"              # ※要 Rosetta 2
cask "logi-options+"

# --- Microsoft Office Suite ---
cask "microsoft-auto-update"
cask "microsoft-excel"
cask "microsoft-word"
cask "microsoft-powerpoint"
cask "microsoft-onenote"
cask "microsoft-teams"

# --- Web Meeting w/ Drivers ---
cask "zoom"

# ----------------------------------------
# 2. Standard GUI Apps (No Password usually)
# ----------------------------------------
# ブラウザ・エディタ・ツール類

cask "google-chrome"
cask "visual-studio-code"
cask "cursor"
cask "chromedriver"

cask "slack"
cask "discord"
cask "notion"
cask "notion-calendar"

cask "gimp"
cask "clipy"
cask "fujifilm-x-raw-studio"
cask "font-jetbrains-mono"

# ----------------------------------------
# 3. Mac App Store Apps (mas)
# ----------------------------------------
# ※事前にApp Storeアプリでログインしてください
# ※PhotoScape X は要 Rosetta 2

mas "LINE", id: 539883307
mas "Magnet", id: 441258766
mas "Dropover", id: 1355679052
mas "Structured", id: 1499198946
mas "Goodnotes", id: 1444383602
mas "Kindle", id: 302584613
mas "CapCut", id: 1500855883
mas "PhotoScape X", id: 929507092
mas "Windows App", id: 1295203466

# ----------------------------------------
# 4. VS Code Extensions
# ----------------------------------------
vscode "github.copilot"
vscode "github.copilot-chat"
vscode "yzhang.markdown-all-in-one"
vscode "shd101wyy.markdown-preview-enhanced"
vscode "yzane.markdown-pdf"
vscode "marp-team.marp-vscode"
vscode "mhutchie.git-graph"
vscode "seatonjiang.gitmoji-vscode"
vscode "ritwickdey.liveserver"
vscode "ms-vscode-remote.remote-containers"
vscode "ms-ceintl.vscode-language-pack-ja"
