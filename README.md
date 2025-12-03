# OneDrive Tray Package

This project packages the OneDrive client with a system tray indicator into a single Debian package. It combines two upstream projects to provide both the OneDrive synchronization client and a system tray service in one convenient package.

## Overview

This package integrates two upstream projects:
- **onedrive**: The OneDrive client for Linux
- **onedrive_tray**: A system tray indicator for OneDrive

The result is a single package that provides:
1. The full OneDrive synchronization functionality
2. A system tray service that monitors and controls the OneDrive client

## Package Contents

The package includes:
- The OneDrive client binary and configuration files
- The OneDrive system tray application
- Required dependencies and configuration files
- Systemd service files for automatic startup

## Features

- Full OneDrive synchronization capabilities
- System tray integration for easy monitoring and control
- Automatic startup with user session
- Configuration options for both the client and tray components

## Usage

After installation, the OneDrive client will automatically start in the background with a system tray icon. You can configure and manage your OneDrive sync settings through the system tray menu.

## Building

This project uses standard Debian packaging tools:
```bash
make
```

The resulting package can be built using:
```bash
dpkg-buildpackage -us -uc
```

## Upstream Projects

- [onedrive](https://github.com/abraunegg/onedrive)
- [onedrive_tray](https://github.com/sentaidigital/onedrive_tray)
