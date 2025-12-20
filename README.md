# Nagashima_mac_setup
ながしまがマックをクリーンインストールした時に慌てないようにするリポジトリです
## 🚀 Quick Start (復元手順)
### 0. 前提条件 (Prerequisites)
OSのクリーンインストール後、以下の準備を済ませてください。

- [ ] インターネット接続: 安定した有線LAN推奨。

- [ ] OSアップデート: 最新の状態にする。

- [ ] App Store ログイン: mas コマンドのために、App Storeアプリを開きApple IDでログインする。

- [ ] SSH鍵の配置: バックアップしておいた ~/.ssh フォルダ（特に id_ed25519 等）を配置し、パーミッションを設定する。

```Bash

chmod 600 ~/.ssh/id_ed25519
```
### 1. Command Line Tools & Homebrew のインストール
まずはターミナルを開き、開発の土台を作ります。
```Bash
# Xcode Command Line Tools
xcode-select --install

# Homebrew (Apple Silicon)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# パスを通す (インストール完了画面の指示に従う)
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```
### 2. Dotfiles の取得

```Bash
# 任意のディレクトリで
git clone git@github.com:USERNAME/dotfiles.git ~/dotfiles
cd ~/dotfiles
```
### 3. アプリ一括インストール (Brew bundle)
Brewfile に記述された全てのCUIツール、GUIアプリ、App Storeアプリ、VS Code拡張機能をインストールします。

```Bash
# ※実行前にApp Storeにログイン済みであることを再確認！
brew bundle
```
☕️ ここ数十分かかるのでコーヒーブレイク

### 4. 設定ファイル (Symlink) の配置
設定ファイルをホームディレクトリにリンクさせます。（自動化スクリプトがない場合の手動手順）

Bash
```
# 例: 既存ファイルをバックアップしてリンク
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
# Starship設定
mkdir -p ~/.config
ln -sf ~/dotfiles/starship.toml ~/.config/starship.toml
```
## 🛠️ Environment Configuration
### Shell (Zsh + Starship + Warp)
Warpターミナルを使用する場合、.zshrc で設定した Starship を反映させるために以下の設定を変更してください。

1. Warp Settings > Appearance > Prompt

1. Set to "Shell prompt (PS1)"

### Python Environment (uv + pyenv)
基本は uv を使用し、レガシー対応で pyenv を共存させています。

- 新規プロジェクト: uv init -> uv run

- global Python: uv 管理下のPythonを使用


```Bash
# .zshrc settings
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# uv completion
eval "$(uv generate-shell-completion zsh)"
```

### Node.js Environment (fnm)
nodebrew ではなく高速な fnm を使用します。

```Bash
# .zshrc settings
eval "$(fnm env --use-on-cd)"
```
## 📝 Manual Setup Checklist
自動化できない設定・権限周りの作業リストです。

### System Settings (macOS)
- [ ] トラックパッド: 「タップでクリック」ON / 軌跡の速さ「最大」

- [ ] キーボード: リピート速度「最速」 / リピート認識時間「最短」

- [ ] キーボード: 修飾キー変更 (Caps Lock -> Control 等)

### Permissions (Security & Privacy)
以下のアプリ起動時に、画面収録・アクセシビリティ権限を許可してください。

- [ ] Logi Options+ (入力監視必須)

- [ ] Karabiner-Elements (入力監視・ドライバ許可必須)

- [ ] Zoom / Discord / Slack / Teams (カメラ・マイク・画面共有)

### Application Setup
- [ ] HHKB: キーマップ書き込み
  
- [ ] VS Code / Cursor: GitHubアカウントでSettings Syncをオンにする

- [ ] JetBrains IDEs: ライセンス認証を行う

- [ ] Font: ターミナルのフォントを JetBrains Mono (または Nerd Font) に設定

## 📂 Directory Structure
Plaintext

```
~/dotfiles
├── .config/
│   └── starship.toml   # Prompt settings
├── .gitconfig          # Git global settings
├── .gitignore          # Global gitignore
├── .zshrc              # Zsh configuration
├── Brewfile            # Package list (Formula, Cask, mas, vscode)
└── README.md           # This file
```
