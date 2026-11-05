[![Release](https://img.shields.io/github/v/release/aurelis-packages/aurelis-app-Krita?label=release)](https://github.com/aurelis-packages/aurelis-app-Krita/releases/latest)
[![Version](https://img.shields.io/badge/version-latest-blue)](https://github.com/aurelis-packages/aurelis-app-Krita/releases/latest)
[![Architecture](https://img.shields.io/badge/arch-x86__64-green)](https://github.com/aurelis-packages/aurelis-app-Krita/releases/latest)
[![License](https://img.shields.io/github/license/aurelis-packages/aurelis-app-Krita)](LICENSE)

---

## Aurelis Krita AppImage Builder

This repository contains the build scripts and GitHub Actions workflow to create a portable **Krita** AppImage for Linux. The build process uses [quick-sharun](https://github.com/pkgforge-dev/Anylinux-AppImages/blob/main/useful-tools/quick-sharun.sh) to bundle Krita and all its dependencies into a single, self-contained AppImage that runs on any Linux distribution without requiring FUSE or system-level installation.

### Features
- **Fully portable** — runs on any Linux distribution (glibc, musl, old and new)
- **No FUSE required** — uses [uruntime](https://github.com/VHSgunzo/uruntime) for extraction-free execution
- **Self-contained** — bundles all libraries, plugins, and assets
- **Automated builds** — GitHub Actions workflow builds on every push to `main`

---

This is an **Aurelis Linux package**, but the resulting AppImage can also run as a regular AppImage on any Linux distribution.

---

Thanx to: [AnyLinux-AppImages](https://pkgforge-dev.github.io/Anylinux-AppImages/)"s
