#!/bin/bash

echo "ローカルサーバーをポート8080で起動します..."

# Python3を試す
if command -v python3 >/dev/null 2>&1; then
    echo "Python3で起動中..."
    python3 -m http.server 8080
# Pythonを試す
elif command -v python >/dev/null 2>&1; then
    echo "Pythonで起動中..."
    python -m http.server 8080
# Node.js (npx) を試す (キャッシュ無効化オプション -c-1 を追加)
elif command -v npx >/dev/null 2>&1; then
    echo "Node.js (npx http-server)で起動中..."
    npx http-server -p 8080 -c-1
# PHPを試す
elif command -v php >/dev/null 2>&1; then
    echo "PHPで起動中..."
    php -S localhost:8080
else
    echo "エラー: サーバーを起動するためには Python, Node.js, または PHP がインストールされている必要があります。"
    exit 1
fi
