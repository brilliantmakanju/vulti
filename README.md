# Vulti ⚡

**Vulti** is your local "second brain" for the terminal. It automates the process of remembering complex installation commands, package lists, and system configurations, making OS reinstalls and distro-hopping painless.

> **Support Development**: [Get Vulti on Itch.io](https://yourname.itch.io/vulti)
> *Lifetime License: $12 (Pay what you want, min $7)*

## 🚀 Features

- **🧠 Command Memory**: Tag and save complex one-liners (e.g., `vulti add obs --cmd '...'`).
- **🐧 Distro Agnostic**: Automatically detects **Arch**, **Debian/Ubuntu**, and **Fedora** to save/restore packages using the correct manager (`pacman`, `apt`, `dnf`).
- **📦 System Snapshot**: Captures your entire package list and Flatpaks in one go.
- **⚙️ Config Backup**: Safely backs up your `~/.config` directory (smartly handling symlinks and special files).
- **🛡️ Backup & Restore**: Create portable zip archives of your entire setup. Restore everything with a single command.
- **👀 View & Edit**: Built-in file viewer to inspect your backups or edit saved commands (`nano`, `nvim`, `code`).
- **⚡ Power Run**: Run saved commands instantly, with optional `sudo` or background execution.

## 📥 Installation

### One-Liner (Recommended)
```bash
curl -s https://raw.githubusercontent.com/brilliantmakanju/vulti/main/install.sh | bash
```

### Manual
1. Clone the repo:
   ```bash
   git clone git@github.com:brilliantmakanju/vulti.git
   cd vulti
   ```
2. Run installer:
   ```bash
   chmod +x install.sh
   ./install.sh
   ```

## 📖 Usage

### Basics
- **Add a command**:
  ```bash
  vulti add obs --cmd 'sudo pacman -S obs-studio --needed'
  ```
- **Run a command**:
  ```bash
  vulti run obs
  # Options:
  #   --sudo : Run with sudo
  #   --bg   : Run in background
  ```
- **List commands**:
  ```bash
  vulti list
  ```

### System Management
- **Save System State**:
  Captures packages and configs to `~/.vulti/`.
  ```bash
  vulti save
  ```
- **View Files**:
  Inspect your saved data or backups.
  ```bash
  vulti view
  ```
- **Backup**:
  Create a timestamped zip in `~/.vulti/backups/`.
  ```bash
  vulti backup
  ```
- **Restore**:
  Wipe and restore from the latest backup (auto-detects distro).
  ```bash
  vulti restore
  ```
- **Reset**:
  Start fresh (wipes all Vulti data).
  ```bash
  vulti reset
  ```

## 🤝 Contributing
Pull requests are welcome! Vulti is open source and community-driven.

## 📄 License
MIT
