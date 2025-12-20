# Brewfile for Clean Install

# ----------------------------------------
# 1. Taps & Core Tools
# ----------------------------------------
# Mac App Store CLI (これがないとmasコマンドが動きません)
brew "mas"

# ----------------------------------------
# 2. Runtimes & CLI Tools (Formulae)
# ----------------------------------------
# Node.js Version Manager (Rust製で高速)
brew "fnm"
# Python Version Manager & Package Installer (Rust製)
brew "uv"
# Python Version Manager (互換性維持のためuvと共存)
brew "pyenv"
# Media processing
brew "ffmpeg"
# Joy (lsの打ち間違い用)
brew "sl"

# ----------------------------------------
# 3. GUI Applications (Casks)
# ----------------------------------------
# --- Browsers ---
cask "google-chrome"

# --- Development ---
cask "visual-studio-code"
cask "cursor"       # AI Editor
cask "docker-desktop"
cask "chromedriver" # For Selenium/Automation

# --- Communication ---
cask "slack"
cask "discord"
cask "zoom"
cask "microsoft-teams"

# --- Office / Productivity ---
cask "notion"
cask "notion-calendar"
cask "microsoft-excel"
cask "microsoft-word"
cask "microsoft-powerpoint"
cask "microsoft-onenote"
cask "microsoft-auto-update"

# --- Creative / Utilities ---
cask "gimp"
cask "clipy"             # Clipboard manager
cask "karabiner-elements" # Keyboard customizer
cask "fujifilm-x-raw-studio"

# --- Hardware Drivers ---
cask "hhkb"
cask "logi-options+"

# --- Fonts ---
cask "font-jetbrains-mono"

# ----------------------------------------
# 4. Mac App Store Apps (mas)
# ----------------------------------------
# ※事前にApp Storeアプリでログインが必要です
mas "LINE", id: 539883307
mas "Magnet", id: 441258766          # Window manager
mas "Dropover", id: 1355679052       # Drag & drop utility
mas "Structured", id: 1499198946     # Daily planner
mas "Goodnotes", id: 1444383602
mas "Kindle", id: 302584613
mas "CapCut", id: 1500855883
mas "PhotoScape X", id: 929507092
mas "Windows App", id: 1295203466    # Remote Desktop

# ----------------------------------------
# 5. VS Code Extensions
# ----------------------------------------
# --- AI ---
vscode "github.copilot"
vscode "github.copilot-chat"

# --- Python ---
vscode "ms-python.python"
vscode "ms-python.vscode-pylance"
vscode "ms-python.debugpy"
vscode "ms-python.vscode-python-envs"
vscode "ms-toolsai.jupyter"

# --- Markdown / Documentation ---
vscode "yzhang.markdown-all-in-one"
vscode "shd101wyy.markdown-preview-enhanced"
vscode "yzane.markdown-pdf"
vscode "marp-team.marp-vscode"       # Slides
vscode "tomoki1207.pdf"              # Viewer

# --- Git / Version Control ---
vscode "mhutchie.git-graph"
vscode "seatonjiang.gitmoji-vscode"

# --- Web / Infra ---
vscode "ritwickdey.liveserver"
vscode "ms-vscode-remote.remote-containers"

# --- Others ---
vscode "ms-ceintl.vscode-language-pack-ja"