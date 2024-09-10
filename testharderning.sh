#!/usr/bin/env bash
if [ "$EUID" -ne 0 ]; then
  script_path=$([[ "$0" = /* ]] && echo "$0" || echo "$PWD/${0#./}")
  sudo "$script_path" || (
    echo 'Administrator privileges are required.'
    exit 1
  )
  exit 0
fi
export HOME="/home/${SUDO_USER:-${USER}}" # Keep `~` and `$HOME` for user not `/root`.


# ----------------------------------------------------------
# --------------------Clear bash history--------------------
# ----------------------------------------------------------
echo '--- Clear bash history'
rm -fv ~/.bash_history
sudo rm -fv /root/.bash_history
# ----------------------------------------------------------


# ----------------------------------------------------------
# --------------------Clear Zsh history---------------------
# ----------------------------------------------------------
echo '--- Clear Zsh history'
rm -fv ~/.zsh_history
sudo rm -fv /root/.zsh_history
# ----------------------------------------------------------


# ----------------------------------------------------------
# --------------------Clear tcsh history--------------------
# ----------------------------------------------------------
echo '--- Clear tcsh history'
rm -fv ~/.history
sudo rm -fv /root/.history
# ----------------------------------------------------------


# ----------------------------------------------------------
# --------------------Clear fish history--------------------
# ----------------------------------------------------------
echo '--- Clear fish history'
rm -fv ~/.local/share/fish/fish_history
sudo rm -fv /root/.local/share/fish/fish_history
rm -fv ~/.config/fish/fish_history
sudo rm -fv /root/.config/fish/fish_history
# ----------------------------------------------------------


# ----------------------------------------------------------
# --------------Clear KornShell (ksh) history---------------
# ----------------------------------------------------------
echo '--- Clear KornShell (ksh) history'
rm -fv ~/.sh_history
sudo rm -fv /root/.sh_history
# ----------------------------------------------------------


# ----------------------------------------------------------
# --------------------Clear ash history---------------------
# ----------------------------------------------------------
echo '--- Clear ash history'
rm -fv ~/.ash_history
sudo rm -fv /root/.ash_history
# ----------------------------------------------------------


# ----------------------------------------------------------
# -------------------Clear crosh history--------------------
# ----------------------------------------------------------
echo '--- Clear crosh history'
rm -fv ~/.crosh_history
sudo rm -fv /root/.crosh_history
# ----------------------------------------------------------


# ----------------------------------------------------------
# ------------Clear privacy.sexy script history-------------
# ----------------------------------------------------------
echo '--- Clear privacy.sexy script history'
# Clear directory contents: "$HOME/.config/privacy.sexy/runs"
glob_pattern="$HOME/.config/privacy.sexy/runs/*"
rm -rfv $glob_pattern
# ----------------------------------------------------------


# ----------------------------------------------------------
# -------------Clear privacy.sexy activity logs-------------
# ----------------------------------------------------------
echo '--- Clear privacy.sexy activity logs'
# Clear directory contents: "$HOME/.config/privacy.sexy/logs"
glob_pattern="$HOME/.config/privacy.sexy/logs/*"
rm -rfv $glob_pattern
# ----------------------------------------------------------


# ----------------------------------------------------------
# ---------------------Clear Wine cache---------------------
# ----------------------------------------------------------
echo '--- Clear Wine cache'
# Temporary Windows files for global prefix
rm -rfv ~/.wine/drive_c/windows/temp/*
# Wine cache:
rm -rfv ~/.cache/wine/
# ----------------------------------------------------------


# ----------------------------------------------------------
# ------------------Clear Winetricks cache------------------
# ----------------------------------------------------------
echo '--- Clear Winetricks cache'
rm -rfv ~/.cache/winetricks/
# ----------------------------------------------------------


# ----------------------------------------------------------
# ---------Clear Thunderbird personal address book----------
# ----------------------------------------------------------
echo '--- Clear Thunderbird personal address book'
# abook.sqlite: Global installation
rm -fv ~/.thunderbird/*/abook.sqlite
# abook.sqlite: Flatpak installation
rm -fv ~/snap/thunderbird/common/.thunderbird/*/abook.sqlite
# abook.sqlite: Snap installation
rm -fv ~/.var/app/org.mozilla.Thunderbird/.thunderbird/*/abook.sqlite
# abook.sqlite-wal: Global installation
rm -fv ~/.thunderbird/*/abook.sqlite-wal
# abook.sqlite-wal: Flatpak installation
rm -fv ~/snap/thunderbird/common/.thunderbird/*/abook.sqlite-wal
# abook.sqlite-wal: Snap installation
rm -fv ~/.var/app/org.mozilla.Thunderbird/.thunderbird/*/abook.sqlite-wal
# abook.mab: Global installation
rm -fv ~/.thunderbird/*/abook.mab
# abook.mab: Flatpak installation
rm -fv ~/snap/thunderbird/common/.thunderbird/*/abook.mab
# abook.mab: Snap installation
rm -fv ~/.var/app/org.mozilla.Thunderbird/.thunderbird/*/abook.mab
# ----------------------------------------------------------


# ----------------------------------------------------------
# ---------Clear Thunderbird collected address book---------
# ----------------------------------------------------------
echo '--- Clear Thunderbird collected address book'
# history.sqlite: Global installation
rm -fv ~/.thunderbird/*/history.sqlite
# history.sqlite: Flatpak installation
rm -fv ~/snap/thunderbird/common/.thunderbird/*/history.sqlite
# history.sqlite: Snap installation
rm -fv ~/.var/app/org.mozilla.Thunderbird/.thunderbird/*/history.sqlite
# history.sqlite-wal: Global installation
rm -fv ~/.thunderbird/*/history.sqlite-wal
# history.sqlite-wal: Flatpak installation
rm -fv ~/snap/thunderbird/common/.thunderbird/*/history.sqlite-wal
# history.sqlite-wal: Snap installation
rm -fv ~/.var/app/org.mozilla.Thunderbird/.thunderbird/*/history.sqlite-wal
# history.mab: Global installation
rm -fv ~/.thunderbird/*/history.mab
# history.mab: Flatpak installation
rm -fv ~/snap/thunderbird/common/.thunderbird/*/history.mab
# history.mab: Snap installation
rm -fv ~/.var/app/org.mozilla.Thunderbird/.thunderbird/*/history.mab
# ----------------------------------------------------------


# ----------------------------------------------------------
# ----------------Clear Thunderbird cookies-----------------
# ----------------------------------------------------------
echo '--- Clear Thunderbird cookies'
# cookies.sqlite: Global installation
rm -fv ~/.thunderbird/*/cookies.sqlite
# cookies.sqlite: Flatpak installation
rm -fv ~/snap/thunderbird/common/.thunderbird/*/cookies.sqlite
# cookies.sqlite: Snap installation
rm -fv ~/.var/app/org.mozilla.Thunderbird/.thunderbird/*/cookies.sqlite
# cookies.sqlite-wal: Global installation
rm -fv ~/.thunderbird/*/cookies.sqlite-wal
# cookies.sqlite-wal: Flatpak installation
rm -fv ~/snap/thunderbird/common/.thunderbird/*/cookies.sqlite-wal
# cookies.sqlite-wal: Snap installation
rm -fv ~/.var/app/org.mozilla.Thunderbird/.thunderbird/*/cookies.sqlite-wal
# cookies.sqlite-journal: Global installation
rm -fv ~/.thunderbird/*/cookies.sqlite-journal
# cookies.sqlite-journal: Flatpak installation
rm -fv ~/snap/thunderbird/common/.thunderbird/*/cookies.sqlite-journal
# cookies.sqlite-journal: Snap installation
rm -fv ~/.var/app/org.mozilla.Thunderbird/.thunderbird/*/cookies.sqlite-journal
# cookies.sqlite-shm: Global installation
rm -fv ~/.thunderbird/*/cookies.sqlite-shm
# cookies.sqlite-shm: Flatpak installation
rm -fv ~/snap/thunderbird/common/.thunderbird/*/cookies.sqlite-shm
# cookies.sqlite-shm: Snap installation
rm -fv ~/.var/app/org.mozilla.Thunderbird/.thunderbird/*/cookies.sqlite-shm
# ----------------------------------------------------------


# Clear Thunderbird session restoration data (open windows and tabs)
echo '--- Clear Thunderbird session restoration data (open windows and tabs)'
# session.json: Global installation
rm -fv ~/.thunderbird/*/session.json
# session.json: Flatpak installation
rm -fv ~/snap/thunderbird/common/.thunderbird/*/session.json
# session.json: Snap installation
rm -fv ~/.var/app/org.mozilla.Thunderbird/.thunderbird/*/session.json
# ----------------------------------------------------------


# ----------------------------------------------------------
# ---------------Clear Thunderbird passwords----------------
# ----------------------------------------------------------
echo '--- Clear Thunderbird passwords'
# logins.json: Global installation
rm -fv ~/.thunderbird/*/logins.json
# logins.json: Flatpak installation
rm -fv ~/snap/thunderbird/common/.thunderbird/*/logins.json
# logins.json: Snap installation
rm -fv ~/.var/app/org.mozilla.Thunderbird/.thunderbird/*/logins.json
# logins-backup.json: Global installation
rm -fv ~/.thunderbird/*/logins-backup.json
# logins-backup.json: Flatpak installation
rm -fv ~/snap/thunderbird/common/.thunderbird/*/logins-backup.json
# logins-backup.json: Snap installation
rm -fv ~/.var/app/org.mozilla.Thunderbird/.thunderbird/*/logins-backup.json
# ----------------------------------------------------------


# ----------------------------------------------------------
# ------------Clear Thunderbird download history------------
# ----------------------------------------------------------
echo '--- Clear Thunderbird download history'
# downloads.rdf: Global installation
rm -fv ~/.thunderbird/*/downloads.rdf
# downloads.rdf: Flatpak installation
rm -fv ~/snap/thunderbird/common/.thunderbird/*/downloads.rdf
# downloads.rdf: Snap installation
rm -fv ~/.var/app/org.mozilla.Thunderbird/.thunderbird/*/downloads.rdf
# downloads.sqlite: Global installation
rm -fv ~/.thunderbird/*/downloads.sqlite
# downloads.sqlite: Flatpak installation
rm -fv ~/snap/thunderbird/common/.thunderbird/*/downloads.sqlite
# downloads.sqlite: Snap installation
rm -fv ~/.var/app/org.mozilla.Thunderbird/.thunderbird/*/downloads.sqlite
# ----------------------------------------------------------


# ----------------------------------------------------------
# --------Clear clicked links history in Thunderbird--------
# ----------------------------------------------------------
echo '--- Clear clicked links history in Thunderbird'
# places.sqlite: Global installation
rm -fv ~/.thunderbird/*/places.sqlite
# places.sqlite: Flatpak installation
rm -fv ~/snap/thunderbird/common/.thunderbird/*/places.sqlite
# places.sqlite: Snap installation
rm -fv ~/.var/app/org.mozilla.Thunderbird/.thunderbird/*/places.sqlite
# places.sqlite-shm: Global installation
rm -fv ~/.thunderbird/*/places.sqlite-shm
# places.sqlite-shm: Flatpak installation
rm -fv ~/snap/thunderbird/common/.thunderbird/*/places.sqlite-shm
# places.sqlite-shm: Snap installation
rm -fv ~/.var/app/org.mozilla.Thunderbird/.thunderbird/*/places.sqlite-shm
# places.sqlite.wal: Global installation
rm -fv ~/.thunderbird/*/places.sqlite.wal
# places.sqlite.wal: Flatpak installation
rm -fv ~/snap/thunderbird/common/.thunderbird/*/places.sqlite.wal
# places.sqlite.wal: Snap installation
rm -fv ~/.var/app/org.mozilla.Thunderbird/.thunderbird/*/places.sqlite.wal
# ----------------------------------------------------------


# ----------------------------------------------------------
# ----------Clear Visual Studio Code crash reports----------
# ----------------------------------------------------------
echo '--- Clear Visual Studio Code crash reports'
# Crash\ Reports: Global installation (also Snap with --classic)
rm -rfv ~/.config/Code/Crash\ Reports/*
# Crash\ Reports: Flatpak installation
rm -rfv ~/.var/app/com.visualstudio.code/config/Code/Crash\ Reports/*
# exthost\ Crash\ Reports: Global installation (also Snap with --classic)
rm -rfv ~/.config/Code/exthost\ Crash\ Reports/*
# exthost\ Crash\ Reports: Flatpak installation
rm -rfv ~/.var/app/com.visualstudio.code/config/Code/exthost\ Crash\ Reports/*
# ----------------------------------------------------------


# ----------------------------------------------------------
# --------------Clear Visual Studio Code cache--------------
# ----------------------------------------------------------
echo '--- Clear Visual Studio Code cache'
# Cache: Global installation (also Snap with --classic)
rm -rfv ~/.config/Code/Cache/*
# Cache: Flatpak installation
rm -rfv ~/.var/app/com.visualstudio.code/config/Code/Cache/*
# CachedData: Global installation (also Snap with --classic)
rm -rfv ~/.config/Code/CachedData/*
# CachedData: Flatpak installation
rm -rfv ~/.var/app/com.visualstudio.code/config/Code/CachedData/*
# Code\ Cache: Global installation (also Snap with --classic)
rm -rfv ~/.config/Code/Code\ Cache/*
# Code\ Cache: Flatpak installation
rm -rfv ~/.var/app/com.visualstudio.code/config/Code/Code\ Cache/*
# GPUCache: Global installation (also Snap with --classic)
rm -rfv ~/.config/Code/GPUCache/*
# GPUCache: Flatpak installation
rm -rfv ~/.var/app/com.visualstudio.code/config/Code/GPUCache/*
# CachedExtensions: Global installation (also Snap with --classic)
rm -rfv ~/.config/Code/CachedExtensions/*
# CachedExtensions: Flatpak installation
rm -rfv ~/.var/app/com.visualstudio.code/config/Code/CachedExtensions/*
# CachedExtensionVSIXs: Global installation (also Snap with --classic)
rm -rfv ~/.config/Code/CachedExtensionVSIXs/*
# CachedExtensionVSIXs: Flatpak installation
rm -rfv ~/.var/app/com.visualstudio.code/config/Code/CachedExtensionVSIXs/*
# ----------------------------------------------------------


# ----------------------------------------------------------
# --------------Clear Visual Studio Code logs---------------
# ----------------------------------------------------------
echo '--- Clear Visual Studio Code logs'
# logs: Global installation (also Snap with --classic)
rm -rfv ~/.config/Code/logs/*
# logs: Flatpak installation
rm -rfv ~/.var/app/com.visualstudio.code/config/Code/logs/*
# ----------------------------------------------------------


# ----------------------------------------------------------
# --------------Clear Azure CLI telemetry data--------------
# ----------------------------------------------------------
echo '--- Clear Azure CLI telemetry data'
rm -rfv ~/.azure/telemetry
rm -fv ~/.azure/telemetry.txt
rm -fv ~/.azure/logs/telemetry.txt
# ----------------------------------------------------------


# ----------------------------------------------------------
# -------------------Clear Azure CLI logs-------------------
# ----------------------------------------------------------
echo '--- Clear Azure CLI logs'
rm -rfv ~/.azure/logs
# ----------------------------------------------------------


# ----------------------------------------------------------
# ------------------Clear Azure CLI cache-------------------
# ----------------------------------------------------------
echo '--- Clear Azure CLI cache'
if ! command -v 'az' &> /dev/null; then
  echo 'Skipping because "az" is not found.'
else
  az cache purge
fi
# ----------------------------------------------------------


# Clear Azure login data (this will log you out of the current session)
echo '--- Clear Azure login data (this will log you out of the current session)'
if ! command -v 'az' &> /dev/null; then
  echo 'Skipping because "az" is not found.'
else
  az logout 2&> /dev/null
az account clear
rm -fv ~/.azure/accessTokens.json
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# -------------------Clear Python history-------------------
# ----------------------------------------------------------
echo '--- Clear Python history'
rm -fv ~/.python_history
sudo rm -fv /root/.python_history
# ----------------------------------------------------------


# ----------------------------------------------------------
# --------------------Clear Steam cache---------------------
# ----------------------------------------------------------
echo '--- Clear Steam cache'
# Global installation
rm -rfv ~/.local/share/Steam/appcache/*
# Snap
rm -rfv ~/snap/steam/common/.cache/*
rm -rfv ~/snap/steam/common/.local/share/Steam/appcache/*
# Flatpak
rm -rfv ~/.var/app/com.valvesoftware.Steam/cache/*
rm -rfv ~/.var/app/com.valvesoftware.Steam/data/Steam/appcache/*
# ----------------------------------------------------------


# ----------------------------------------------------------
# ------------------Clear Clementine cache------------------
# ----------------------------------------------------------
echo '--- Clear Clementine cache'
# Global installation
rm -rfv ~/.cache/Clementine/*
# Flatpak installation
rm -rfv ~/.var/app/org.clementine_player.Clementine/cache/*
# Snap installation
rm -rfv ~/snap/clementine/common/.cache/*
# ----------------------------------------------------------


# ----------------------------------------------------------
# -------------Clear LibreOffice usage history--------------
# ----------------------------------------------------------
echo '--- Clear LibreOffice usage history'
# Global installation
rm -f ~/.config/libreoffice/4/user/registrymodifications.xcu
# Snap package
rm -fv ~/snap/libreoffice/*/.config/libreoffice/4/user/registrymodifications.xcu
# Flatpak installation
rm -fv ~/.var/app/org.libreoffice.LibreOffice/config/libreoffice/4/user/registrymodifications.xcu
# ----------------------------------------------------------


# ----------------------------------------------------------
# ------------------Clear GNOME Web cache-------------------
# ----------------------------------------------------------
echo '--- Clear GNOME Web cache'
# Global installation
rm -rfv /.cache/epiphany/*
# Flatpak installation
rm -rfv ~/.var/app/org.gnome.Epiphany/cache/*
# Snap installation
rm -rfv ~/~/snap/epiphany/common/.cache/*
# ----------------------------------------------------------


# ----------------------------------------------------------
# -------------Clear GNOME Web browsing history-------------
# ----------------------------------------------------------
echo '--- Clear GNOME Web browsing history'
# ephy-history.db: Global installation
rm -fv ~/.local/share/epiphany/ephy-history.db
# ephy-history.db: Flatpak installation
rm -fv ~/.var/app/org.gnome.Epiphany/data/epiphany/ephy-history.db
# ephy-history.db: Snap installation
rm -fv ~/snap/epiphany/*/.local/share/epiphany/ephy-history.db
# ephy-history.db-shm: Global installation
rm -fv ~/.local/share/epiphany/ephy-history.db-shm
# ephy-history.db-shm: Flatpak installation
rm -fv ~/.var/app/org.gnome.Epiphany/data/epiphany/ephy-history.db-shm
# ephy-history.db-shm: Snap installation
rm -fv ~/snap/epiphany/*/.local/share/epiphany/ephy-history.db-shm
# ephy-history.db-wal: Global installation
rm -fv ~/.local/share/epiphany/ephy-history.db-wal
# ephy-history.db-wal: Flatpak installation
rm -fv ~/.var/app/org.gnome.Epiphany/data/epiphany/ephy-history.db-wal
# ephy-history.db-wal: Snap installation
rm -fv ~/snap/epiphany/*/.local/share/epiphany/ephy-history.db-wal
# ----------------------------------------------------------


# ----------------------------------------------------------
# -----------------Clear GNOME Web cookies------------------
# ----------------------------------------------------------
echo '--- Clear GNOME Web cookies'
# cookies.sqlite: Global installation
rm -fv ~/.local/share/epiphany/cookies.sqlite
# cookies.sqlite: Flatpak installation
rm -fv ~/.var/app/org.gnome.Epiphany/data/epiphany/cookies.sqlite
# cookies.sqlite: Snap installation
rm -fv ~/snap/epiphany/*/.local/share/epiphany/cookies.sqlite
# ----------------------------------------------------------


# ----------------------------------------------------------
# ----------------Clear GNOME Web bookmarks-----------------
# ----------------------------------------------------------
echo '--- Clear GNOME Web bookmarks'
# bookmarks.gvdb: Global installation
rm -fv ~/.local/share/epiphany/bookmarks.gvdb
# bookmarks.gvdb: Flatpak installation
rm -fv ~/.var/app/org.gnome.Epiphany/data/epiphany/bookmarks.gvdb
# bookmarks.gvdb: Snap installation
rm -fv ~/snap/epiphany/*/.local/share/epiphany/bookmarks.gvdb
# ----------------------------------------------------------


# ----------------------------------------------------------
# -------------------Clear Firefox cache--------------------
# ----------------------------------------------------------
echo '--- Clear Firefox cache'
# Global installation
rm -rfv ~/.cache/mozilla/*
# Flatpak installation
rm -rfv ~/.var/app/org.mozilla.firefox/cache/*
# Snap installation
rm -rfv ~/snap/firefox/common/.cache/*
# ----------------------------------------------------------


# ----------------------------------------------------------
# ---------------Clear Firefox crash reports----------------
# ----------------------------------------------------------
echo '--- Clear Firefox crash reports'
# Global installation
rm -fv ~/.mozilla/firefox/Crash\ Reports/*
# Flatpak installation
rm -rfv ~/.var/app/org.mozilla.firefox/.mozilla/firefox/Crash\ Reports/*
# Snap installation
rm -rfv ~/snap/firefox/common/.mozilla/firefox/Crash\ Reports/*
# Delete files matching pattern: "~/.mozilla/firefox/*/crashes/*"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.mozilla/firefox/*/crashes/*'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/crashes/*"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/crashes/*'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/snap/firefox/common/.mozilla/firefox/*/crashes/*"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/snap/firefox/common/.mozilla/firefox/*/crashes/*'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/.mozilla/firefox/*/crashes/events/*"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.mozilla/firefox/*/crashes/events/*'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/crashes/events/*"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/crashes/events/*'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/snap/firefox/common/.mozilla/firefox/*/crashes/events/*"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/snap/firefox/common/.mozilla/firefox/*/crashes/events/*'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# ------------------Clear Firefox cookies-------------------
# ----------------------------------------------------------
echo '--- Clear Firefox cookies'
# Delete files matching pattern: "~/.mozilla/firefox/*/cookies.sqlite"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.mozilla/firefox/*/cookies.sqlite'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/cookies.sqlite"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/cookies.sqlite'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/snap/firefox/common/.mozilla/firefox/*/cookies.sqlite"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/snap/firefox/common/.mozilla/firefox/*/cookies.sqlite'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# ----------------------------------------------------------


# Clear Firefox browsing history (URLs, downloads, bookmarks, visits, etc.)
echo '--- Clear Firefox browsing history (URLs, downloads, bookmarks, visits, etc.)'
# Delete files matching pattern: "~/.mozilla/firefox/*/downloads.rdf"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.mozilla/firefox/*/downloads.rdf'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/downloads.rdf"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/downloads.rdf'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/snap/firefox/common/.mozilla/firefox/*/downloads.rdf"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/snap/firefox/common/.mozilla/firefox/*/downloads.rdf'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/.mozilla/firefox/*/downloads.sqlite"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.mozilla/firefox/*/downloads.sqlite'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/downloads.sqlite"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/downloads.sqlite'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/snap/firefox/common/.mozilla/firefox/*/downloads.sqlite"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/snap/firefox/common/.mozilla/firefox/*/downloads.sqlite'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/.mozilla/firefox/*/places.sqlite"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.mozilla/firefox/*/places.sqlite'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/places.sqlite"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/places.sqlite'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/snap/firefox/common/.mozilla/firefox/*/places.sqlite"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/snap/firefox/common/.mozilla/firefox/*/places.sqlite'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/.mozilla/firefox/*/favicons.sqlite"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.mozilla/firefox/*/favicons.sqlite'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/favicons.sqlite"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/favicons.sqlite'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/snap/firefox/common/.mozilla/firefox/*/favicons.sqlite"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/snap/firefox/common/.mozilla/firefox/*/favicons.sqlite'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# -------------------Clear Firefox logins-------------------
# ----------------------------------------------------------
echo '--- Clear Firefox logins'
# Delete files matching pattern: "~/.mozilla/firefox/*/logins.json"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.mozilla/firefox/*/logins.json'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/logins.json"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/logins.json'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/snap/firefox/common/.mozilla/firefox/*/logins.json"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/snap/firefox/common/.mozilla/firefox/*/logins.json'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/.mozilla/firefox/*/logins-backup.json"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.mozilla/firefox/*/logins-backup.json'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/logins-backup.json"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/logins-backup.json'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/snap/firefox/common/.mozilla/firefox/*/logins-backup.json"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/snap/firefox/common/.mozilla/firefox/*/logins-backup.json'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/.mozilla/firefox/*/signons.sqlite"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.mozilla/firefox/*/signons.sqlite'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/signons.sqlite"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/signons.sqlite'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/snap/firefox/common/.mozilla/firefox/*/signons.sqlite"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/snap/firefox/common/.mozilla/firefox/*/signons.sqlite'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# ------------Clear Firefox autocomplete history------------
# ----------------------------------------------------------
echo '--- Clear Firefox autocomplete history'
# Delete files matching pattern: "~/.mozilla/firefox/*/formhistory.sqlite"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.mozilla/firefox/*/formhistory.sqlite'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/formhistory.sqlite"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/formhistory.sqlite'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/snap/firefox/common/.mozilla/firefox/*/formhistory.sqlite"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/snap/firefox/common/.mozilla/firefox/*/formhistory.sqlite'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# ------Clear Firefox "Multi-Account Containers" data-------
# ----------------------------------------------------------
echo '--- Clear Firefox "Multi-Account Containers" data'
# Delete files matching pattern: "~/.mozilla/firefox/*/containers.json"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.mozilla/firefox/*/containers.json'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/containers.json"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/containers.json'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/snap/firefox/common/.mozilla/firefox/*/containers.json"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/snap/firefox/common/.mozilla/firefox/*/containers.json'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# ---------Clear Firefox open tabs and windows data---------
# ----------------------------------------------------------
echo '--- Clear Firefox open tabs and windows data'
# Delete files matching pattern: "~/.mozilla/firefox/*/sessionstore.jsonlz4"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.mozilla/firefox/*/sessionstore.jsonlz4'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/sessionstore.jsonlz4"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/sessionstore.jsonlz4'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# Delete files matching pattern: "~/snap/firefox/common/.mozilla/firefox/*/sessionstore.jsonlz4"
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
import glob
import os
path = '~/snap/firefox/common/.mozilla/firefox/*/sessionstore.jsonlz4'
expanded_path = os.path.expandvars(os.path.expanduser(path))
print(f'Deleting files matching pattern: {expanded_path}')
paths = glob.glob(expanded_path)
if not paths:
  print('Skipping, no paths found.')
for path in paths:
  if not os.path.isfile(path):
    print(f'Skipping folder: "{path}".')
    continue
  os.remove(path)
  print(f'Successfully delete file: "{path}".')
print(f'Successfully deleted {len(paths)} file(s).')
EOF
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# -------------Clear system crash report files--------------
# ----------------------------------------------------------
echo '--- Clear system crash report files'
sudo rm -rfv /var/crash/*
sudo rm -rfv /var/lib/systemd/coredump/
# ----------------------------------------------------------


# ----------------------------------------------------------
# --------------Clear system logs (`journald`)--------------
# ----------------------------------------------------------
echo '--- Clear system logs (`journald`)'
if ! command -v 'journalctl' &> /dev/null; then
  echo 'Skipping because "journalctl" is not found.'
else
  sudo journalctl --vacuum-time=1s
fi
sudo rm -rfv /run/log/journal/*
sudo rm -rfv /var/log/journal/*
# ----------------------------------------------------------


# ----------------------------------------------------------
# -----------Clear Zeitgeist data (activity logs)-----------
# ----------------------------------------------------------
echo '--- Clear Zeitgeist data (activity logs)'
sudo rm -rfv {/root,/home/*}/.local/share/zeitgeist
# ----------------------------------------------------------


# ----------------------------------------------------------
# ------------Clear GTK recently used files list------------
# ----------------------------------------------------------
echo '--- Clear GTK recently used files list'
# From global installations
rm -fv /.recently-used.xbel
rm -fv ~/.local/share/recently-used.xbel*
# From snap packages
rm -fv ~/snap/*/*/.local/share/recently-used.xbel
# From Flatpak packages
rm -fv ~/.var/app/*/data/recently-used.xbel
# ----------------------------------------------------------


# ----------------------------------------------------------
# --------Clear KDE-tracked recently used items list--------
# ----------------------------------------------------------
echo '--- Clear KDE-tracked recently used items list'
# From global installations
rm -rfv ~/.local/share/RecentDocuments/*.desktop
rm -rfv ~/.kde/share/apps/RecentDocuments/*.desktop
rm -rfv ~/.kde4/share/apps/RecentDocuments/*.desktop
# From snap packages
rm -fv ~/snap/*/*/.local/share/*.desktop
# From Flatpak packages
rm -rfv ~/.var/app/*/data/*.desktop
# ----------------------------------------------------------


# ----------------------------------------------------------
# ---------------------Clear Snap cache---------------------
# ----------------------------------------------------------
echo '--- Clear Snap cache'
sudo rm -rfv /var/lib/snapd/cache/*
# ----------------------------------------------------------


# ----------------------------------------------------------
# -----------------Remove old Snap packages-----------------
# ----------------------------------------------------------
echo '--- Remove old Snap packages'
if ! command -v 'snap' &> /dev/null; then
  echo 'Skipping because "snap" is not found.'
else
  snap list --all | while read name version rev tracking publisher notes; do
  if [[ $notes = *disabled* ]]; then
    sudo snap remove "$name" --revision="$rev";
  fi
done
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# -------------Remove orphaned Flatpak runtimes-------------
# ----------------------------------------------------------
echo '--- Remove orphaned Flatpak runtimes'
if ! command -v 'flatpak' &> /dev/null; then
  echo 'Skipping because "flatpak" is not found.'
else
  flatpak uninstall --unused --noninteractive
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# -------------------Clear Flatpak cache--------------------
# ----------------------------------------------------------
echo '--- Clear Flatpak cache'
# Temporary cache
sudo rm -rfv /var/tmp/flatpak-cache-*
# New cache
rm -rfv ~/.cache/flatpak/system-cache/*
# Old cache
rm -rfv ~/.local/share/flatpak/system-cache/*
# ----------------------------------------------------------


# ----------------------------------------------------------
# ---------------Clear obsolete APT packages----------------
# ----------------------------------------------------------
echo '--- Clear obsolete APT packages'
if ! command -v 'apt-get' &> /dev/null; then
  echo 'Skipping because "apt-get" is not found.'
else
  sudo apt-get autoclean
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# ---------------Clear APT package file lists---------------
# ----------------------------------------------------------
echo '--- Clear APT package file lists'
sudo rm -rfv /var/lib/apt/lists/*
# ----------------------------------------------------------


# ----------------------------------------------------------
# ---------Clear orphaned APT package dependencies----------
# ----------------------------------------------------------
echo '--- Clear orphaned APT package dependencies'
if ! command -v 'apt-get' &> /dev/null; then
  echo 'Skipping because "apt-get" is not found.'
else
  sudo apt-get -y autoremove --purge
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# ---------------Clear cache for APT packages---------------
# ----------------------------------------------------------
echo '--- Clear cache for APT packages'
if ! command -v 'apt-get' &> /dev/null; then
  echo 'Skipping because "apt-get" is not found.'
else
  sudo apt-get clean
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# --------------------Clear YUM/RPM data--------------------
# ----------------------------------------------------------
echo '--- Clear YUM/RPM data'
if ! command -v 'yum' &> /dev/null; then
  echo 'Skipping because "yum" is not found.'
else
  yum clean all --enablerepo='*'
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# --------------------Clear DNF/RPM data--------------------
# ----------------------------------------------------------
echo '--- Clear DNF/RPM data'
if ! command -v 'dnf' &> /dev/null; then
  echo 'Skipping because "dnf" is not found.'
else
  dnf clean all --enablerepo='*'
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# ----------------Clear user-specific cache-----------------
# ----------------------------------------------------------
echo '--- Clear user-specific cache'
rm -rfv ~/.cache/*
sudo rm -rfv root/.cache/*
# ----------------------------------------------------------


# ----------------------------------------------------------
# -----------------Clear system-wide cache------------------
# ----------------------------------------------------------
echo '--- Clear system-wide cache'
rm -rf /var/cache/*
# ----------------------------------------------------------


# ----------------------------------------------------------
# -------------Clear Flatpak application cache--------------
# ----------------------------------------------------------
echo '--- Clear Flatpak application cache'
rm -rfv ~/.var/app/*/cache/*
# ----------------------------------------------------------


# ----------------------------------------------------------
# ---------------Clear Snap application cache---------------
# ----------------------------------------------------------
echo '--- Clear Snap application cache'
rm -fv ~/snap/*/*/.cache/*
# ----------------------------------------------------------


# ----------------------------------------------------------
# --------------Clear thumbnails (icon cache)---------------
# ----------------------------------------------------------
echo '--- Clear thumbnails (icon cache)'
rm -rfv ~/.thumbnails/*
rm -rfv ~/.cache/thumbnails/*
# ----------------------------------------------------------


# ----------------------------------------------------------
# -----------------------Empty trash------------------------
# ----------------------------------------------------------
echo '--- Empty trash'
# Empty global trash
rm -rfv ~/.local/share/Trash/*
sudo rm -rfv /root/.local/share/Trash/*
# Empty Snap trash
rm -rfv ~/snap/*/*/.local/share/Trash/*
# Empty Flatpak trash (apps may not choose to use Portal API)
rm -rfv ~/.var/app/*/data/Trash/*
# ----------------------------------------------------------


# ----------------------------------------------------------
# --------------Clear global temporary folders--------------
# ----------------------------------------------------------
echo '--- Clear global temporary folders'
sudo rm -rfv /tmp/*
sudo rm -rfv /var/tmp/*
# ----------------------------------------------------------


# ----------------------------------------------------------
# --------------------Clear screenshots---------------------
# ----------------------------------------------------------
echo '--- Clear screenshots'
# Clear default directory for GNOME screenshots
rm -rfv ~/Pictures/Screenshots/*
if [ -d ~/Pictures ]; then
  # Clear Ubuntu screenshots
  find ~/Pictures -name 'Screenshot from *.png' | while read -r file_path; do
    rm -fv "$file_path" # E.g. Screenshot from 2022-08-20 02-46-41.png
  done
  # Clear KDE (Spectatle) screenshots
  find ~/Pictures -name 'Screenshot_*' | while read -r file_path; do
    rm -fv "$file_path" # E.g. Screenshot_20220927_205646.png
  done
fi
# Clear ksnip screenshots
find ~ -name 'ksnip_*' | while read -r file_path; do
  rm -fv "$file_path" # E.g. ksnip_20220927-195151.png
done
# ----------------------------------------------------------


# ----------------------------------------------------------
# -------Disable participation in Popularity Contest--------
# ----------------------------------------------------------
echo '--- Disable participation in Popularity Contest'
config_file='/etc/popularity-contest.conf'
if [ -f "$config_file" ]; then
  sudo sed -i '/PARTICIPATE/c\PARTICIPATE=no' "$config_file"
else
  echo "Skipping because configuration file at ($config_file) is not found. Is popcon installed?"
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# -------Remove Popularity Contest (`popcon`) package-------
# ----------------------------------------------------------
echo '--- Remove Popularity Contest (`popcon`) package'
if ! command -v 'apt-get' &> /dev/null; then
  echo 'Skipping because "apt-get" is not found.'
else
  apt_package_name='popularity-contest'
if status="$(dpkg-query -W --showformat='${db:Status-Status}' "$apt_package_name" 2>&1)" \
    && [ "$status" = installed ]; then
  echo "\"$apt_package_name\" is installed and will be uninstalled."
  sudo apt-get purge -y "$apt_package_name"
else
  echo "Skipping, no action needed, \"$apt_package_name\" is not installed."
fi
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# -Remove daily cron entry for Popularity Contest (popcon)--
# ----------------------------------------------------------
echo '--- Remove daily cron entry for Popularity Contest (popcon)'
job_name='popularity-contest'
cronjob_path="/etc/cron.daily/$job_name"
if [[ -f "$cronjob_path" ]]; then
  if [[ -x "$cronjob_path" ]]; then
    sudo chmod -x "$cronjob_path"
    echo "Successfully disabled cronjob \"$job_name\"."
  else
    echo "Skipping, cronjob \"$job_name\" is already disabled."
  fi
else
  echo "Skipping, \"$job_name\" cronjob is not found."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# ----------------Remove `reportbug` package----------------
# ----------------------------------------------------------
echo '--- Remove `reportbug` package'
if ! command -v 'apt-get' &> /dev/null; then
  echo 'Skipping because "apt-get" is not found.'
else
  apt_package_name='reportbug'
if status="$(dpkg-query -W --showformat='${db:Status-Status}' "$apt_package_name" 2>&1)" \
    && [ "$status" = installed ]; then
  echo "\"$apt_package_name\" is installed and will be uninstalled."
  sudo apt-get purge -y "$apt_package_name"
else
  echo "Skipping, no action needed, \"$apt_package_name\" is not installed."
fi
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# ----------Remove Python modules for `reportbug`-----------
# ----------------------------------------------------------
echo '--- Remove Python modules for `reportbug`'
if ! command -v 'apt-get' &> /dev/null; then
  echo 'Skipping because "apt-get" is not found.'
else
  apt_package_name='python3-reportbug'
if status="$(dpkg-query -W --showformat='${db:Status-Status}' "$apt_package_name" 2>&1)" \
    && [ "$status" = installed ]; then
  echo "\"$apt_package_name\" is installed and will be uninstalled."
  sudo apt-get purge -y "$apt_package_name"
else
  echo "Skipping, no action needed, \"$apt_package_name\" is not installed."
fi
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# ----Remove UI for reportbug (`reportbug-gtk` package)-----
# ----------------------------------------------------------
echo '--- Remove UI for reportbug (`reportbug-gtk` package)'
if ! command -v 'apt-get' &> /dev/null; then
  echo 'Skipping because "apt-get" is not found.'
else
  apt_package_name='reportbug-gtk'
if status="$(dpkg-query -W --showformat='${db:Status-Status}' "$apt_package_name" 2>&1)" \
    && [ "$status" = installed ]; then
  echo "\"$apt_package_name\" is installed and will be uninstalled."
  sudo apt-get purge -y "$apt_package_name"
else
  echo "Skipping, no action needed, \"$apt_package_name\" is not installed."
fi
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# --Disable automatic Visual Studio Code extension updates--
# ----------------------------------------------------------
echo '--- Disable automatic Visual Studio Code extension updates'
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'extensions.autoUpdate'
target = json.loads('false')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
# ----------------------------------------------------------


# Disable Visual Studio Code automatic extension update checks
echo '--- Disable Visual Studio Code automatic extension update checks'
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'extensions.autoCheckUpdates'
target = json.loads('false')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
# ----------------------------------------------------------


# Disable automatic fetching of Microsoft recommendations in Visual Studio Code
echo '--- Disable automatic fetching of Microsoft recommendations in Visual Studio Code'
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'extensions.showRecommendationsOnlyOnDemand'
target = json.loads('true')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# Disable synchronization of Visual Studio Code keybindings-
# ----------------------------------------------------------
echo '--- Disable synchronization of Visual Studio Code keybindings'
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'settingsSync.keybindingsPerPlatform'
target = json.loads('false')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# -Disable synchronization of Visual Studio Code extensions-
# ----------------------------------------------------------
echo '--- Disable synchronization of Visual Studio Code extensions'
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'settingsSync.ignoredExtensions'
target = json.loads('["*"]')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# --Disable synchronization of Visual Studio Code settings--
# ----------------------------------------------------------
echo '--- Disable synchronization of Visual Studio Code settings'
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'settingsSync.ignoredSettings'
target = json.loads('["*"]')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# -----------Disable Visual Studio Code telemetry-----------
# ----------------------------------------------------------
echo '--- Disable Visual Studio Code telemetry'
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'telemetry.telemetryLevel'
target = json.loads('"off"')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'telemetry.enableTelemetry'
target = json.loads('false')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'telemetry.enableCrashReporter'
target = json.loads('false')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
# ----------------------------------------------------------


# Disable online experiments by Microsoft in Visual Studio Code
echo '--- Disable online experiments by Microsoft in Visual Studio Code'
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'workbench.enableExperiments'
target = json.loads('false')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
# ----------------------------------------------------------


# Disable Visual Studio Code automatic updates in favor of manual updates
echo '--- Disable Visual Studio Code automatic updates in favor of manual updates'
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'update.mode'
target = json.loads('"none"')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'update.channel'
target = json.loads('"none"')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
# ----------------------------------------------------------


# Disable fetching release notes from Microsoft servers after an update
echo '--- Disable fetching release notes from Microsoft servers after an update'
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'update.showReleaseNotes'
target = json.loads('false')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
# ----------------------------------------------------------


# Disable automatic fetching of remote repositories in Visual Studio Code
echo '--- Disable automatic fetching of remote repositories in Visual Studio Code'
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'git.autofetch'
target = json.loads('false')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
# ----------------------------------------------------------


# Disable fetching package information from NPM and Bower in Visual Studio Code
echo '--- Disable fetching package information from NPM and Bower in Visual Studio Code'
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'npm.fetchOnlinePackageInfo'
target = json.loads('false')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
# ----------------------------------------------------------


# Disable sending search queries to Microsoft in Visual Studio Code
echo '--- Disable sending search queries to Microsoft in Visual Studio Code'
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'workbench.settings.enableNaturalLanguageSearch'
target = json.loads('false')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
# ----------------------------------------------------------


# Disable Visual Studio Code automatic type acquisition in TypeScript
echo '--- Disable Visual Studio Code automatic type acquisition in TypeScript'
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'typescript.disableAutomaticTypeAcquisition'
target = json.loads('false')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# ---------Disable Visual Studio Code Edit Sessions---------
# ----------------------------------------------------------
echo '--- Disable Visual Studio Code Edit Sessions'
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'workbench.experimental.editSessions.enabled'
target = json.loads('false')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'workbench.experimental.editSessions.autoStore'
target = json.loads('false')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'workbench.editSessions.autoResume'
target = json.loads('false')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
if ! command -v 'python3' &> /dev/null; then
  echo 'Skipping because "python3" is not found.'
else
  python3 <<EOF
from pathlib import Path
import os, json, sys
property_name = 'workbench.editSessions.continueOn'
target = json.loads('false')
home_dir = f'/home/{os.getenv("SUDO_USER", os.getenv("USER"))}'
settings_files = [
  # Global installation (also Snap that installs with "--classic" flag)
  f'{home_dir}/.config/Code/User/settings.json',
  # Flatpak installation
  f'{home_dir}/.var/app/com.visualstudio.code/config/Code/User/settings.json'
]
for settings_file in settings_files:
  file=Path(settings_file)
  if not file.is_file():
    print(f'Skipping, file does not exist at "{settings_file}".')
    continue
  print(f'Reading file at "{settings_file}".')
  file_content = file.read_text()
  if not file_content.strip():
    print('Settings file is empty. Treating it as default empty JSON object.')
    file_content = '{}'
  json_object = None
  try:
    json_object = json.loads(file_content)
  except json.JSONDecodeError:
    print(f'Error, invalid JSON format in the settings file: "{settings_file}".', file=sys.stderr)
    continue
  if property_name not in json_object:
    print(f'Settings "{property_name}" is not configured.')
  else:
    existing_value = json_object[property_name]
    if existing_value == target:
      print(f'Skipping, "{property_name}" is already configured as {json.dumps(target)}.')
      continue
    print(f'Setting "{property_name}" has unexpected value {json.dumps(existing_value)} that will be changed.')
  json_object[property_name] = target
  new_content = json.dumps(json_object, indent=2)
  file.write_text(new_content)
  print(f'Successfully configured "{property_name}" to {json.dumps(target)}.')
EOF
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# -------Enable dynamic First-Party Isolation (dFPI)--------
# ----------------------------------------------------------
echo '--- Enable dynamic First-Party Isolation (dFPI)'
pref_name='network.cookie.cookieBehavior'
pref_value='5'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# -----------Enable Firefox network partitioning------------
# ----------------------------------------------------------
echo '--- Enable Firefox network partitioning'
pref_name='privacy.partition.network_state'
pref_value='true'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# ---Disable outdated Firefox First-Party Isolation (FPI)---
# ----------------------------------------------------------
echo '--- Disable outdated Firefox First-Party Isolation (FPI)'
pref_name='privacy.firstparty.isolate'
pref_value='false'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# ------------Enable Firefox tracking protection------------
# ----------------------------------------------------------
echo '--- Enable Firefox tracking protection'
pref_name='privacy.trackingprotection.enabled'
pref_value='true'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# Enable Firefox anti-fingerprinting (may break some websites)
echo '--- Enable Firefox anti-fingerprinting (may break some websites)'
pref_name='privacy.resistFingerprinting'
pref_value='true'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# Disable WebRTC exposure of your private IP address in Firefox
echo '--- Disable WebRTC exposure of your private IP address in Firefox'
pref_name='media.peerconnection.ice.default_address_only'
pref_value='true'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# -------Minimize Firefox telemetry logging verbosity-------
# ----------------------------------------------------------
echo '--- Minimize Firefox telemetry logging verbosity'
pref_name='toolkit.telemetry.log.level'
pref_value='"Fatal"'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# -----------Disable Firefox telemetry log output-----------
# ----------------------------------------------------------
echo '--- Disable Firefox telemetry log output'
pref_name='toolkit.telemetry.log.dump'
pref_value='"Fatal"'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# --------Disable pings to Firefox telemetry server---------
# ----------------------------------------------------------
echo '--- Disable pings to Firefox telemetry server'
pref_name='toolkit.telemetry.server'
pref_value='""'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# --------------Disable Firefox shutdown ping---------------
# ----------------------------------------------------------
echo '--- Disable Firefox shutdown ping'
pref_name='toolkit.telemetry.shutdownPingSender.enabled'
pref_value='false'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
pref_name='toolkit.telemetry.shutdownPingSender.enabledFirstSession'
pref_value='false'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
pref_name='toolkit.telemetry.firstShutdownPing.enabled'
pref_value='false'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# -------------Disable Firefox new profile ping-------------
# ----------------------------------------------------------
echo '--- Disable Firefox new profile ping'
pref_name='toolkit.telemetry.newProfilePing.enabled'
pref_value='false'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# ---------------Disable Firefox update ping----------------
# ----------------------------------------------------------
echo '--- Disable Firefox update ping'
pref_name='toolkit.telemetry.updatePing.enabled'
pref_value='false'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# ----------------Disable Firefox prio ping-----------------
# ----------------------------------------------------------
echo '--- Disable Firefox prio ping'
pref_name='toolkit.telemetry.prioping.enabled'
pref_value='false'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# Disable collection of technical and interaction data in Firefox
echo '--- Disable collection of technical and interaction data in Firefox'
pref_name='datareporting.healthreport.uploadEnabled'
pref_value='false'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# -----Disable detailed telemetry collection in Firefox-----
# ----------------------------------------------------------
echo '--- Disable detailed telemetry collection in Firefox'
pref_name='toolkit.telemetry.enabled'
pref_value='false'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# ----------Disable archiving of Firefox telemetry----------
# ----------------------------------------------------------
echo '--- Disable archiving of Firefox telemetry'
pref_name='toolkit.telemetry.archive.enabled'
pref_value='false'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# ------------Disable Firefox unified telemetry-------------
# ----------------------------------------------------------
echo '--- Disable Firefox unified telemetry'
pref_name='toolkit.telemetry.unified'
pref_value='false'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# -------------Clear Firefox telemetry user ID--------------
# ----------------------------------------------------------
echo '--- Clear Firefox telemetry user ID'
pref_name='toolkit.telemetry.cachedClientID'
pref_value='""'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# ---------Disable Firefox Pioneer study monitoring---------
# ----------------------------------------------------------
echo '--- Disable Firefox Pioneer study monitoring'
pref_name='toolkit.telemetry.pioneer-new-studies-available'
pref_value='false'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# -------------Clear Firefox pioneer program ID-------------
# ----------------------------------------------------------
echo '--- Clear Firefox pioneer program ID'
pref_name='toolkit.telemetry.pioneerId'
pref_value='""'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# -----Disable blocking of unstable plugins in Firefox------
# ----------------------------------------------------------
echo '--- Disable blocking of unstable plugins in Firefox'
pref_name='browser.safebrowsing.blockedURIs.enabled'
pref_value='false'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# Disable Firefox application reputation checks for downloads
echo '--- Disable Firefox application reputation checks for downloads'
pref_name='browser.safebrowsing.downloads.enabled'
pref_value='false'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# ------------Disable Firefox malware protection------------
# ----------------------------------------------------------
echo '--- Disable Firefox malware protection'
pref_name='browser.safebrowsing.malware.enabled'
pref_value='false'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# -----------Disable Firefox phishing protection------------
# ----------------------------------------------------------
echo '--- Disable Firefox phishing protection'
pref_name='browser.safebrowsing.phishing.enabled'
pref_value='false'
echo "Setting preference \"$pref_name\" to \"$pref_value\"."
declare -a profile_paths=(
  ~/.mozilla/firefox/*/
  ~/.var/app/org.mozilla.firefox/.mozilla/firefox/*/
  ~/snap/firefox/common/.mozilla/firefox/*/
)
declare -i total_profiles_found=0
for profile_dir in "${profile_paths[@]}"; do
  if [ ! -d "$profile_dir" ]; then
    continue
  fi
  if [[ ! "$(basename "$profile_dir")" =~ ^[a-z0-9]{8}\..+ ]]; then
    continue # Not a profile folder
  fi
  ((total_profiles_found++))
  user_js_file="${profile_dir}user.js"
  echo "$user_js_file:"
  if [ ! -f "$user_js_file" ]; then
    touch "$user_js_file"
    echo $'\t''Created new user.js file'
  fi
  pref_start="user_pref(\"$pref_name\","
  pref_line="user_pref(\"$pref_name\", $pref_value);"
  if ! grep --quiet "^$pref_start" "${user_js_file}"; then
    echo -n $'\n'"$pref_line" >> "$user_js_file"
    echo $'\t'"Successfully added a new preference in $user_js_file."
  elif grep --quiet "^$pref_line$" "$user_js_file"; then
    echo $'\t'"Skipping, preference is already set as expected in $user_js_file."
  else
    sed --in-place "/^$pref_start/c\\$pref_line" "$user_js_file"
    echo $'\t'"Successfully replaced the existing incorrect preference in $user_js_file."
  fi
done
if [ "$total_profiles_found" -eq 0 ]; then
  echo 'No profile folders are found, no changes are made.'
else
  echo "Successfully verified preferences in $total_profiles_found profiles."
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# --Disable Python history for future interactive commands--
# ----------------------------------------------------------
echo '--- Disable Python history for future interactive commands'
history_file="$HOME/.python_history"
if [ ! -f "$history_file" ]; then
  touch "$history_file"
  echo "Created $history_file."
fi
sudo chattr +i "$(realpath $history_file)" # realpath in case of symlink
# ----------------------------------------------------------


# ----------------------------------------------------------
# ------------------Disable .NET telemetry------------------
# ----------------------------------------------------------
echo '--- Disable .NET telemetry'
variable='DOTNET_CLI_TELEMETRY_OPTOUT'
value='1'
declaration_file='/etc/environment'
if ! [ -f "$declaration_file" ]; then
  echo "\"$declaration_file\" does not exist."
  sudo touch "$declaration_file"
  echo "Created $declaration_file."
fi
assignment_start="$variable="
assignment="$variable=$value"
if ! grep --quiet "^$assignment_start" "${declaration_file}"; then
  echo "Variable \"$variable\" was not configured before."
  echo -n $'\n'"$assignment" | sudo tee -a "$declaration_file" > /dev/null
  echo "Successfully configured ($assignment)."
else
  if grep --quiet "^$assignment$" "${declaration_file}"; then
    echo "Skipping. Variable \"$variable\" is already set to value \"$value\"."
  else
    if ! sudo sed --in-place "/^$assignment_start/d" "$declaration_file"; then
      >&2 echo "Failed to delete assignment starting with \"$assignment_start\"."
    else
      echo "Successfully deleted unexpected assignment of \"$variable\"."
      if ! echo -n $'\n'"$assignment" | sudo tee -a "$declaration_file" > /dev/null; then
        >&2 echo "Failed to add assignment \"$assignment\"."
      else
        echo "Successfully reconfigured ($assignment)."
      fi
    fi
  fi
fi
# ----------------------------------------------------------


# ----------------------------------------------------------
# ------------Disable PowerShell Core telemetry-------------
# ----------------------------------------------------------
echo '--- Disable PowerShell Core telemetry'
variable='POWERSHELL_TELEMETRY_OPTOUT'
value='1'
declaration_file='/etc/environment'
if ! [ -f "$declaration_file" ]; then
  echo "\"$declaration_file\" does not exist."
  sudo touch "$declaration_file"
  echo "Created $declaration_file."
fi
assignment_start="$variable="
assignment="$variable=$value"
if ! grep --quiet "^$assignment_start" "${declaration_file}"; then
  echo "Variable \"$variable\" was not configured before."
  echo -n $'\n'"$assignment" | sudo tee -a "$declaration_file" > /dev/null
  echo "Successfully configured ($assignment)."
else
  if grep --quiet "^$assignment$" "${declaration_file}"; then
    echo "Skipping. Variable \"$variable\" is already set to value \"$value\"."
  else
    if ! sudo sed --in-place "/^$assignment_start/d" "$declaration_file"; then
      >&2 echo "Failed to delete assignment starting with \"$assignment_start\"."
    else
      echo "Successfully deleted unexpected assignment of \"$variable\"."
      if ! echo -n $'\n'"$assignment" | sudo tee -a "$declaration_file" > /dev/null; then
        >&2 echo "Failed to add assignment \"$assignment\"."
      else
        echo "Successfully reconfigured ($assignment)."
      fi
    fi
  fi
fi
# ----------------------------------------------------------
# ------------Install Basic Private Utilities-------------
# ----------------------------------------------------------
echo '--- Install Basic Private Utilities'
sudo apt-get install -y bc net-tools pciutils network-manager

# Clone the repository and set up Harbian Audit
echo 'Cloning Harbian Audit repository...'
if ! git clone https://github.com/hardenedlinux/harbian-audit.git; then
    >&2 echo "Failed to clone repository."
    exit 1
fi
cd harbian-audit || exit
sudo cp etc/default.cfg /etc/default/cis-hardening

# Update CIS_ROOT_DIR and run Harbian Audit
echo 'Configuring and running Harbian Audit...'
if ! sudo sed -i "s#CIS_ROOT_DIR=.*#CIS_ROOT_DIR='$(pwd)'#" /etc/default/cis-hardening; then
    >&2 echo "Failed to update CIS_ROOT_DIR."
    exit 1
fi
sudo bin/hardening.sh --init
sudo bin/hardening.sh --set-hardening-level 2
sudo bin/hardening.sh --apply

# Install and configure ClamAV
echo 'Installing and configuring ClamAV...'
sudo apt install -y clamav-daemon
sudo systemctl status clamav-daemon
sudo clamdscan -p 3

# Configure ClamAV on-access scanning
echo 'Configuring ClamAV on-access scanning...'
sudo bash -c 'cat <<EOF >> /etc/clamav/clamd.conf
OnAccessIncludePath /home
OnAccessPrevention true
OnAccessExcludeUname clamav
OnAccessMountPath /
OnAccessExcludeRootUID yes
EOF'

sudo mkdir -p /root/quarantine
sudo clamonacc -F --log=/var/log/clamav/clamonacc --move=/root/quarantine
sudo systemctl enable clamav-onacc.service && sudo systemctl start clamav-onacc
sudo systemctl status clamav-onacc

# Install Fail2Ban
echo 'Installing Fail2Ban...'
sudo apt install -y fail2ban

# ----------------------------------------------------------
# ------------User Configuration & System Hardening--------
# ----------------------------------------------------------
# Your user configuration and system hardening script here
echo '--- Starting system hardening...'
# The rest of your system configuration script
# Ensure to replace or adjust any placeholder values as needed

# Example:
echo 'Updating PAM settings...'
echo "session optional pam_umask.so" | sudo tee -a /etc/pam.d/common-session > /dev/null

echo 'Disabling core dumps...'
echo "* soft core 0" | sudo tee -a /etc/security/limits.conf > /dev/null
echo "* hard core 0" | sudo tee -a /etc/security/limits.conf > /dev/null

echo 'Disabling root console login...'
sudo sh -c 'cat /dev/null > /etc/securetty'

echo 'Updating sysctl.conf...'
sudo mv /etc/sysctl.conf /root/osh-backups/
wget -q -O /etc/sysctl.conf https://raw.githubusercontent.com/ITNerdbox/OS-Hardening/master/sysctl.conf
sudo chmod 644 /etc/sysctl.conf
sudo sysctl -p > /dev/null

echo 'Updating permissions...'
sudo chmod 750 /home/$user

echo 'Configuring CrackLib...'
sudo cp /etc/pam.d/common-password /root/osh-backups/
sudo sed -i "s#pam_cracklib.so retry=.*#pam_cracklib.so retry=$PASSWORD_RETRY minlen=$PASSWORD_LENGTH difok=3 ucredit=$PASSWORD_UCASE lcredit=$PASSWORD_LCASE dcredit=$PASSWORD_DIGIT ocredit=$PASSWORD_SCHAR#" /etc/pam.d/common-password

echo 'Hardening /tmp partition...'
current_partition=$(mount | grep "/tmp" | awk '{print $1}')
if [ -z "$current_partition" ]; then
    echo "Failed: No separate /tmp directory configured during installation."
else
    sudo chmod 1777 /tmp
    sudo sed -i '/tmp/d' /etc/fstab
    echo "$current_partition /tmp ext4 loop,nosuid,noexec,rw 0 0" | sudo tee -a /etc/fstab > /dev/null
    sudo mount -a
fi

echo 'Disabling specific hardware and protocols...'
echo "install firewire /bin/true" | sudo tee -a /etc/modprobe.conf > /dev/null
echo "install usb_storage /bin/true" | sudo tee -a /etc/modprobe.conf > /dev/null
echo "install dccp /bin/true" | sudo tee -a /etc/modprobe.conf > /dev/null
echo "install sctp /bin/true" | sudo tee -a /etc/modprobe.conf > /dev/null
echo "install rds /bin/true" | sudo tee -a /etc/modprobe.conf > /dev/null
echo "install tipc /bin/true" | sudo tee -a /etc/modprobe.conf > /dev/null

echo 'Removing temporary packages...'
for PKG in "${PKG_TEMP[@]}"; do
    sudo apt-get purge -y $PKG > /dev/null
done
sudo apt-get purge -y netcat > /dev/null


#-------------------------------------------------------
# Firewall and Basic Security Configuration
#-------------------------------------------------------

# Configure UFW (Uncomplicated Firewall)
sudo ufw limit 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

#-------------------------------------------------------
# Sysctl Configuration
#-------------------------------------------------------

# Disable loading of kernel modules
sudo sysctl kernel.modules_disabled=1

# Display current sysctl values
sudo sysctl -a
sudo sysctl -A
sudo sysctl mib
sudo sysctl net.ipv4.conf.all.rp_filter
sudo sysctl -a --pattern 'net.ipv4.conf.(eth|wlan)0.arp'

#-------------------------------------------------------
# Host Configuration
#-------------------------------------------------------

cat <<EOF | sudo tee /etc/host.conf
order bind,hosts
multi on
EOF

#-------------------------------------------------------
# Fail2ban Setup
#-------------------------------------------------------

sudo cp jail.local /etc/fail2ban/
sudo systemctl enable fail2ban
sudo systemctl start fail2ban

#-------------------------------------------------------
# Network and System Info
#-------------------------------------------------------

echo "listening ports"
sudo netstat -tunlp

#-------------------------------------------------------
# Firewall Configuration with iptables and ip6tables
#-------------------------------------------------------

IPTABLES="/sbin/iptables"
IP6TABLES="/sbin/ip6tables"
MODPROBE="/sbin/modprobe"
RMMOD="/sbin/rmmod"
ARP="/usr/sbin/arp"
SSHPORT="22"

# Logging options
LOG="LOG --log-level debug --log-tcp-sequence --log-tcp-options"
LOG="$LOG --log-ip-options"

# Defaults for rate limiting
RLIMIT="-m limit --limit 3/s --limit-burst 8"

# Load required kernel modules
"$MODPROBE" ip_conntrack_ftp
"$MODPROBE" ip_conntrack_irc

# Kernel configuration
echo 1 > /proc/sys/net/ipv4/ip_forward
echo 0 > /proc/sys/net/ipv4/ip_forward

# Enable IP spoofing protection
for i in /proc/sys/net/ipv4/conf/*/rp_filter; do echo 1 > "$i"; done

# Protect against SYN flood attacks
echo 1 > /proc/sys/net/ipv4/tcp_syncookies

# Ignore ICMP echo requests and other protections
echo 0 > /proc/sys/net/ipv4/icmp_echo_ignore_all
echo 1 > /proc/sys/net/ipv4/icmp_echo_ignore_broadcasts
for i in /proc/sys/net/ipv4/conf/*/log_martians; do echo 1 > "$i"; done
echo 1 > /proc/sys/net/ipv4/icmp_ignore_bogus_error_responses
for i in /proc/sys/net/ipv4/conf/*/accept_redirects; do echo 0 > "$i"; done
for i in /proc/sys/net/ipv4/conf/*/send_redirects; do echo 0 > "$i"; done
for i in /proc/sys/net/ipv4/conf/*/accept_source_route; do echo 0 > "$i"; done
for i in /proc/sys/net/ipv4/conf/*/mc_forwarding; do echo 0 > "$i"; done
for i in /proc/sys/net/ipv4/conf/*/proxy_arp; do echo 0 > "$i"; done
for i in /proc/sys/net/ipv4/conf/*/secure_redirects; do echo 1 > "$i"; done
for i in /proc/sys/net/ipv4/conf/*/bootp_relay; do echo 0 > "$i"; done

# Default policies
"$IPTABLES" -P INPUT DROP
"$IPTABLES" -P FORWARD DROP
"$IPTABLES" -P OUTPUT DROP

# Set the nat/mangle/raw tables' chains to ACCEPT
"$IPTABLES" -t nat -P PREROUTING ACCEPT
"$IPTABLES" -t nat -P OUTPUT ACCEPT
"$IPTABLES" -t nat -P POSTROUTING ACCEPT
"$IPTABLES" -t mangle -P PREROUTING ACCEPT
"$IPTABLES" -t mangle -P INPUT ACCEPT
"$IPTABLES" -t mangle -P FORWARD ACCEPT
"$IPTABLES" -t mangle -P OUTPUT ACCEPT
"$IPTABLES" -t mangle -P POSTROUTING ACCEPT

# Cleanup
"$IPTABLES" -F
"$IPTABLES" -t nat -F
"$IPTABLES" -t mangle -F
"$IPTABLES" -X
"$IPTABLES" -t nat -X
"$IPTABLES" -t mangle -X
"$IPTABLES" -Z
"$IPTABLES" -t nat -Z
"$IPTABLES" -t mangle -Z

# Completely disable IPv6 if ip6tables is available 
if test -x "$IP6TABLES"; then
    "$IP6TABLES" -P INPUT DROP 2>/dev/null
    "$IP6TABLES" -P FORWARD DROP 2>/dev/null
    "$IP6TABLES" -P OUTPUT DROP 2>/dev/null
    "$IP6TABLES" -t mangle -P PREROUTING ACCEPT 2>/dev/null
    "$IP6TABLES" -t mangle -P INPUT ACCEPT 2>/dev/null
    "$IP6TABLES" -t mangle -P FORWARD ACCEPT 2>/dev/null
    "$IP6TABLES" -t mangle -P OUTPUT ACCEPT 2>/dev/null
    "$IP6TABLES" -t mangle -P POSTROUTING ACCEPT 2>/dev/null
    "$IP6TABLES" -F 2>/dev/null
    "$IP6TABLES" -t mangle -F 2>/dev/null
    "$IP6TABLES" -X 2>/dev/null
    "$IP6TABLES" -t mangle -X 2>/dev/null
    "$IP6TABLES" -Z 2>/dev/null
    "$IP6TABLES" -t mangle -Z 2>/dev/null
fi

# Custom user-defined chains
"$IPTABLES" -N ACCEPTLOG
"$IPTABLES" -A ACCEPTLOG -j "$LOG" "$RLIMIT" --log-prefix "ACCEPT "
"$IPTABLES" -A ACCEPTLOG -j ACCEPT

"$IPTABLES" -N DROPLOG
"$IPTABLES" -A DROPLOG -j "$LOG" "$RLIMIT" --log-prefix "DROP "
"$IPTABLES" -A DROPLOG -j DROP

"$IPTABLES" -N REJECTLOG
"$IPTABLES" -A REJECTLOG -j "$LOG" "$RLIMIT" --log-prefix "REJECT "
"$IPTABLES" -A REJECTLOG -p tcp -j REJECT --reject-with tcp-reset
"$IPTABLES" -A REJECTLOG -j REJECT

"$IPTABLES" -N RELATED_ICMP
"$IPTABLES" -A RELATED_ICMP -p icmp --icmp-type destination-unreachable -j ACCEPT
"$IPTABLES" -A RELATED_ICMP -p icmp --icmp-type time-exceeded -j ACCEPT
"$IPTABLES" -A RELATED_ICMP -p icmp --icmp-type parameter-problem -j ACCEPT
"$IPTABLES" -A RELATED_ICMP -j DROPLOG

"$IPTABLES" -A INPUT -p icmp -m limit --limit 1/s --limit-burst 2 -j ACCEPT
"$IPTABLES" -A INPUT -p icmp -m limit --limit 1/s --limit-burst 2 -j LOG --log-prefix PING-DROP:
"$IPTABLES" -A INPUT -p icmp -j DROP
"$IPTABLES" -A OUTPUT -p icmp -j ACCEPT

"$IPTABLES" -A INPUT -p icmp --fragment -j DROPLOG
"$IPTABLES" -A OUTPUT -p icmp --fragment -j DROPLOG
"$IPTABLES" -A FORWARD -p icmp --fragment -j DROPLOG

"$IPTABLES" -A INPUT -p icmp -m state --state ESTABLISHED -j ACCEPT "$RLIMIT"
"$IPTABLES" -A OUTPUT -p icmp -m state --state ESTABLISHED -j ACCEPT "$RLIMIT"
"$IPTABLES" -A INPUT -p icmp -m state --state RELATED -j RELATED_ICMP "$RLIMIT"
"$IPTABLES" -A OUTPUT -p icmp -m state --state RELATED -j RELATED_ICMP "$RLIMIT"
"$IPTABLES" -A INPUT -p icmp --icmp-type echo-request -j ACCEPT "$RLIMIT"
"$IPTABLES" -A OUTPUT -p icmp --icmp-type echo-request -j ACCEPT "$RLIMIT"
"$IPTABLES" -A INPUT -p icmp -j DROPLOG
"$IPTABLES" -A OUTPUT -p icmp -j DROPLOG
"$IPTABLES" -A FORWARD -p icmp -j DROPLOG

# Allow loopback interface to do anything
"$IPTABLES" -A INPUT -i lo -j ACCEPT
"$IPTABLES" -A OUTPUT -o lo -j ACCEPT

# Accept traffic on localhost
"$IPTABLES" -A INPUT -i lo -j ACCEPT
"$IPTABLES" -A OUTPUT -o lo -j ACCEPT

# Allow SSH and HTTP/HTTPS traffic
"$IPTABLES" -A INPUT -p tcp --dport "$SSHPORT" -j ACCEPT
"$IPTABLES" -A INPUT -p tcp -m multiport --dports 80,443 -j ACCEPT
"$IPTABLES" -A INPUT -p tcp -j DROPLOG

# Accept established and related traffic
"$IPTABLES" -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
"$IPTABLES" -A OUTPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
"$IPTABLES" -A OUTPUT -m state --state ESTABLISHED -j ACCEPT

# Set custom chain defaults
"$IPTABLES" -P INPUT DROP
"$IPTABLES" -P FORWARD DROP
"$IPTABLES" -P OUTPUT DROP

# Custom user chains for logging
"$IPTABLES" -A INPUT -j ACCEPTLOG
"$IPTABLES" -A FORWARD -j ACCEPTLOG
"$IPTABLES" -A OUTPUT -j ACCEPTLOG

# Apply rules for specific traffic
"$IPTABLES" -A INPUT -i lo -j ACCEPT
"$IPTABLES" -A OUTPUT -o lo -j ACCEPT

# Save iptables rules
sudo sh -c "iptables-save > /etc/iptables/rules.v4"
sudo sh -c "ip6tables-save > /etc/iptables/rules.v6"

echo "Firewall rules and configurations have been applied."

# Define color codes
shopt -s inherit_errexit nullglob
YW="\033[33m"
BL="\033[36m"
RD="\033[01;31m"
BGN="\033[4;92m"
GN="\033[1;92m"
DGN="\033[32m"
CL="\033[m"
BFR="\\r\\033[K"
HOLD="-"
CM="${GN}✓${CL}"
CROSS="${RD}✗${CL}"
WARN="${DGN}⚠${CL}"

# Utility Functions

function getIni() {
    local startsection="$1"
    local endsection="$2"
    output="$(awk "/$startsection/{ f = 1; next } /$endsection/{ f = 0 } f" "${configFile}")"
}

function backupConfigs() {
    local config="$1"
    cp -pr --archive "$config" "${config}-COPY-$(date +"%m-%d-%Y")" >/dev/null 2>&1
}

function msg_info() {
    local msg="$1"
    echo -ne " ${HOLD} ${YW}${msg}..."
}

function msg_ok() {
    local msg="$1"
    echo -e "${BFR} ${CM} ${GN}${msg}${CL}"
}

function msg_warn() {
    local msg="$1"
    echo -e "${BFR} ${WARN} ${DGN}${msg}${CL}"
}

function msg_error() {
    local msg="$1"
    echo -e "${BFR} ${CROSS} ${RD}${msg}${CL}"
}

function errorhandler() {
    msg_error "$1"
    exit 1
}

function installPackages() {
    msg_info "Updating system"
    apt-get -y update >/dev/null 2>&1
    apt-get -y full-upgrade >/dev/null 2>&1
    apt-get -y install apt-transport-https ca-certificates host gnupg lsb-release >/dev/null 2>&1
    msg_ok "System updated successfully"

    if [[ -n "$auditSystem" ]]; then
        msg_info "Installing Lynis"
        curl -s https://packages.cisofy.com/keys/cisofy-software-public.key | apt-key add - >/dev/null 2>&1
        echo "deb https://packages.cisofy.com/community/lynis/deb/ stable main" | tee /etc/apt/sources.list.d/cisofy-lynis.list >/dev/null 2>&1
        apt-get -y update >/dev/null 2>&1
        apt-get -y install lynis host >/dev/null 2>&1
        msg_ok "Lynis installed successfully"
        msg_info "Updating Lynis database"
        lynis update info >/dev/null 2>&1
        msg_ok "Lynis database updated successfully"
        msg_info "Running Lynis audit for base score (this can take a while)"
        lynis audit system --quiet --report-file /tmp/systemaudit-base-"$(date +"%m-%d-%Y")" >/dev/null 2>&1
        base_score="$(grep hardening_index /tmp/systemaudit-base-"$(date +"%m-%d-%Y")" | cut -d"=" -f2)" >/dev/null 2>&1
        msg_ok "Lynis audit completed with a Score of ${base_score}"
    fi

    msg_info "Installing required packages"
    apt-get -y install libpam-google-authenticator ufw fail2ban auditd audispd-plugins rsyslog chkrootkit libpam-pwquality curl unattended-upgrades apt-listchanges apticron debsums apt-show-versions dos2unix rng-tools needrestart debsecan >/dev/null 2>&1
    msg_ok "Packages installed successfully"

    if [[ -n "$withAide" ]]; then
        msg_info "Installing AIDE"
        apt-get -y install aide aide-common >/dev/null 2>&1
        msg_info "AIDE installed successfully"
        msg_info "Backing up AIDE configuration files"
        backupConfigs "/etc/aide"
        backupConfigs "/etc/default/aide"
        msg_ok "AIDE configuration files backed up successfully"
        msg_info "Configuring AIDE (this can take a while)"
        sed -i '/#CRON_DAILY_RUN=yes/s/#//g' /etc/default/aide >/dev/null 2>&1
        aideinit -y -f >/dev/null 2>&1
        msg_ok "AIDE configured successfully"
    fi

    if [[ -n "$withClamav" ]]; then
        msg_info "Installing Clamav"
        apt-get -y install clamav clamav-freshclam clamav-daemon >/dev/null 2>&1
        msg_ok "Clamav installed successfully"
        msg_info "Backing up Clamav configuration files"
        backupConfigs "/etc/clamav/freshclam.conf"
        backupConfigs "/etc/clamav/clamd.conf"
        msg_ok "Clamav configuration files backed up successfully"
    fi

    msg_info "Backing up configuration files"
    backupConfigs "/etc/fstab"
    backupConfigs "/etc/pam.d/common-password"
    backupConfigs "/etc/pam.d/sshd"
    backupConfigs "/etc/chkrootkit.conf"
    backupConfigs "/etc/ssh/sshd_config"
    msg_ok "Configuration files backed up successfully"
}

function secure_ssh() {
    msg_info "Securing SSH"

    if [[ -z "$sshPort" ]]; then
        sshPort=$(shuf -i 28000-40000 -n 1)
    elif [[ "$sshPort" -gt 65535 ]]; then
        msg_warn "Invalid SSH port, using random port"
        sshPort=$(shuf -i 28000-40000 -n 1)
    elif [[ "$sshPort" -eq 22 ]]; then
        msg_warn "SSH port is set to 22 (default)"
    fi

    getIni "START_SSHD" "END_SSHD"
    printf "%s" "$output" | tee /etc/ssh/sshd_config >/dev/null 2>&1
    dos2unix /etc/ssh/sshd_config >/dev/null 2>&1
    sed -i "s/20000/${sshPort}/g" /etc/ssh/sshd_config

    if [[ -n "$sshUser" ]]; then
        IFS=',' read -ra users <<< "$sshUser"
        for user in "${users[@]}"; do
            sed -i "/^AllowUsers/ s/$/ ${user}/" /etc/ssh/sshd_config
            msg_ok "SSH user ${user} added to allowed users"
        done
    else
        sed -i "s/AllowUsers/#AllowUsers yourUser/g" /etc/ssh/sshd_config
        msg_warn "No SSH users specified, allowing all users to login"
    fi

    if [[ -n "$sshGroup" ]]; then
        IFS=',' read -ra groups <<< "$sshGroup"
        for group in "${groups[@]}"; do
            sed -i "/^AllowGroups/ s/$/ ${group}/" /etc/ssh/sshd_config
            msg_ok "SSH group ${group} added to allowed groups"
        done
    else
        sed -i "s/AllowGroups/#AllowGroups yourGroup/g" /etc/ssh/sshd_config
    fi

    getIni "START_PAM_SSHD" "END_PAM_SSHD"
    printf "%s" "$output" | tee -a /etc/pam.d/sshd >/dev/null 2>&1
    systemctl restart sshd.service >/dev/null 2>&1

    getIni "START_DEFBANNER" "END_DEFBANNER"
    printf "%s" "$output" | tee /etc/issue /etc/issue.net >/dev/null 2>&1
    echo -en '\n' | tee -a /etc/issue /etc/issue.net >/dev/null 2>&1

    msg_ok "SSH secured successfully"
}

function secure_system() {
    msg_info "Securing System"

    echo -e "\nproc     /proc     proc     defaults,hidepid=2     0     0" | tee -a /etc/fstab >/dev/null 2>&1

    # Configure PAM settings
    sed -i -r -e "s/^(password\s+requisite\s+pam_pwquality.so)(.*)$/# \1\2 \n\1 retry=3 minlen=10 difok=3 ucredit=-1 lcredit=-1 dcredit=-1 ocredit=-1 maxrepeat=3 gecoschec /" /etc/pam.d/common-password

    # Update login.defs
    sed -i '/# SHA_CRYPT_MAX_ROUNDS/s/5000/1000000/g' /etc/login.defs
    sed -i '/# SHA_CRYPT_MIN_ROUNDS/s/5000/1000000/g' /etc/login.defs
    sed -i '/PASS_MAX_DAYS/s/99999/180/g' /etc/login.defs
    sed -i '/PASS_MIN_DAYS/s/0/1/g' /etc/login.defs
    sed -i '/PASS_WARN_AGE/s/7/28/g' /etc/login.defs
    sed -i '/UMASK/s/022/027/g' /etc/login.defs
    sed -i '/USERGROUPS_ENAB/s/yes/no/g' /etc/login.defs

    # Update sshd_config settings
    sed -i "s/#PermitRootLogin yes/PermitRootLogin no/g" /etc/ssh/sshd_config
    sed -i "s/#PasswordAuthentication yes/PasswordAuthentication no/g" /etc/ssh/sshd_config
    sed -i "s/#PermitEmptyPasswords no/PermitEmptyPasswords no/g" /etc/ssh/sshd_config

    # Configure UFW firewall
    ufw default deny incoming
    ufw default allow outgoing
    ufw allow ssh
    ufw enable
    ufw reload

    # Enable Fail2Ban
    systemctl enable fail2ban.service >/dev/null 2>&1
    systemctl start fail2ban.service >/dev/null 2>&1

    # Update rsyslog
    sed -i '/^module(load="imklog")/a\$PrivDropToUser syslog' /etc/rsyslog.conf
    sed -i '/^module(load="imklog")/a\$PrivDropToGroup syslog' /etc/rsyslog.conf
    systemctl restart rsyslog.service >/dev/null 2>&1

    msg_ok "System secured successfully"
}

function configure() {
    if [[ -n "$withSSH" ]]; then
        secure_ssh
    fi

    if [[ -n "$withSystem" ]]; then
        secure_system
    fi
}

# Main Execution
if [[ "$#" -lt 1 ]]; then
    echo "Usage: $0 <configFile>"
    exit 1
fi

configFile="$1"
installPackages
configure

msg_ok "Configuration complete"

script_init "$@"

echo 'Your privacy and security is now hardened'
echo 'Press any key to exit.'
read -n 1 -s
