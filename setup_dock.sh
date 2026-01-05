#!/bin/bash

# --- アプリのパス定義 ---
APP_SETTINGS="/System/Applications/System Settings.app"
APP_LAUNCHPAD="/System/Applications/Launchpad.app"
APP_CHROME="/Applications/Google Chrome.app"
APP_EXCEL="/Applications/Microsoft Excel.app"
APP_PPT="/Applications/Microsoft PowerPoint.app"
APP_PHOTOS="/System/Applications/Photos.app"
APP_GOODNOTES="/Applications/Goodnotes.app"
APP_NOTION="/Applications/Notion.app"
APP_NOTES="/System/Applications/Notes.app"
APP_CALENDAR="/System/Applications/Calendar.app"
APP_REMINDERS="/System/Applications/Reminders.app"
APP_STRUCTURED="/Applications/Structured.app"
APP_MUSIC="/System/Applications/Music.app"
APP_WARP="/Applications/Warp.app"
APP_VSCODE="/Applications/Visual Studio Code.app"
APP_ANTIGRAVITY="/Applications/Antigravity.app" 
APP_DOCKER="/Applications/Docker.app"
APP_CALCULATOR="/System/Applications/Calculator.app"
APP_DISCORD="/Applications/Discord.app"

# --- Dockの再構築 ---

echo "Dockを整理しています..."

# 既存のDockアイテムをすべて削除
dockutil --remove all --no-restart

# 順番に追加
dockutil --add "$APP_SETTINGS" --no-restart
dockutil --add "$APP_LAUNCHPAD" --no-restart
dockutil --add "$APP_CHROME" --no-restart
dockutil --add "$APP_EXCEL" --no-restart
dockutil --add "$APP_PPT" --no-restart
dockutil --add "$APP_PHOTOS" --no-restart
dockutil --add "$APP_GOODNOTES" --no-restart
dockutil --add "$APP_NOTION" --no-restart
dockutil --add "$APP_NOTES" --no-restart
dockutil --add "$APP_CALENDAR" --no-restart
dockutil --add "$APP_REMINDERS" --no-restart
dockutil --add "$APP_STRUCTURED" --no-restart
dockutil --add "$APP_MUSIC" --no-restart
dockutil --add "$APP_WARP" --no-restart
dockutil --add "$APP_VSCODE" --no-restart
dockutil --add "$APP_ANTIGRAVITY" --no-restart
dockutil --add "$APP_DOCKER" --no-restart
dockutil --add "$APP_CALCULATOR" --no-restart
dockutil --add "$APP_DISCORD" --no-restart

# Dockを再起動して反映
killall Dock

echo "完了しました！"