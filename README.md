# Palworld Mods Merge

## Table of Contents
- [Palworld Mods Merge](#palworld-mods-merge)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Features](#features)
  - [Installation Instructions](#installation-instructions)
    - [Steam:](#steam)
    - [Gamepass:](#gamepass)
  - [Uninstallation](#uninstallation)

## Introduction
A personal merge of a mods I play with on Palworld

## Features
  - World Map Tweaks
  - Tech Points Tweaks
  - Flying Stamina Tweaks
  - Carry Weight Tweaks
  - Glider Tweaks
  - Base Range Tweaks
  - Pause Game - "F1" key to pause the game.
  - Hide HUD - "F9" key to toggle HUD
  - Tools and Weapons Durability Tweaks


## Installation Instructions
### Steam:
1. Extract `UE4SS_Xinput.zip` to `Palworld\Pal\Binaries\Win64\`. (A "Mods" folder will appear inside the Win64 folder.)
2. Extract this mod to `Palworld\Pal\Binaries\Win64\Mods`. (The `palworld-lua-merge` folder should be inside the "Mods" folder.)
3. Open `mods.txt` in the "Mods" folder and add the following line: `palworld-lua-merge : 1`

### Gamepass:
1. Extract `UE4SS_Xinput.zip` to `..\Users\...Appdata\Local\Pal\Saved\Config\WinGDK\`. (A "Mods" folder will appear inside the WinGDK folder.)
   - Alternatively, extracting to `\XboxGames\Palworld\Content\Pal\Binaries\WinGDK\` may help.
2. Rename `xinput1_3` to `xinput1_4`.
3. In the `UE4SS-settings.ini` file, set `bUseUObjectArrayCache` to `false`.
4. Extract this mod to `...\Users\...Appdata\Local\Pal\Saved\Config\WinGDK\Mods`. (The `palworld-lua-merge` folder should be inside the "Mods" folder.)
5. Open `mods.txt` in the "Mods" folder and add the following line: `palworld-lua-merge : 1`

## Uninstallation
To uninstall the mod, follow these steps:
1. Open `mods.txt` in the "Mods" folder.
2. Change the line `palworld-lua-merge : 1` to `palworld-lua-merge : 0`.
3. Save the file.