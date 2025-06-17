# 🌲 Tree-ndk

Tree-ndk is a lightweight multi-architecture `tree`
binary for Android, installable as a Magisk Module. It is installed systemlessly, and is avalable in $PATH due to magisks overlayfs feature. It is accesable for use through adb shell and in android terminal emulators such as termux... (note: use in termux only becomes available once su is called and you are in a system shell.)

## Source code for building can be found at:
https://github.com/ouroboros6/tree-ndk-source-code.git

## 🛠 Features

- Recursively displays directory trees
- `-L n` or `--max-depth=n` limits the depth
- `-a` or `--all` shows hidden files
- `-v` or `--version` prints version info
- `-h` or `--help` displays a usage page
- Final output: total count of files and directories
- CPU architecture detection during install
- Fully systemless, Magisk-compatible

## 📦 Installation

Flash the `.zip` via Magisk or install via a Magisk module manager.

- Magisk App

## 🧪 Supported Architectures

- arm64-v8a
- armeabi-v7a
- x86
- x86_64

## 🔧 Usage

```sh
tree -L 2 -a /sdcard
tree -v
tree -h
