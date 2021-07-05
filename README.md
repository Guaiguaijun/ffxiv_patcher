# FFXIV Patcher

This is a small PowerShell script that will download all of the patches for FFXIV as listed in [this Google Sheet](https://docs.google.com/spreadsheets/d/1lmVTLEj7oXx_JbUPBiWlSf1xW9hitwIgAvfQq3QzzFE/edit#gid=0). This is mainly to save time clicking things and reduces any downloading overhead by your browser. Useful for pesky FFXIV Launcher errors.

## Usage

Download the [`ff14_patcher.ps1`](https://raw.githubusercontent.com/IAreKyleW00t/ff14_patcher/master/ff14_patcher.ps1) (right-click > Save As...) file to your PC, then right-click the file and select "Run with PowerShell". If you get a prompt to allow/run the scipt, select the option to let it run.

You'll see the following prompt come up, and once you press a key it will begin downloading all of patches into a `patches` folder in the same directory you're running the script in.

```
######################################
##      FFXIV Patch Downloader      ##
######################################

This script will download ALL of the patches for FFXIV and is
indended to be used as a workaround for many common FFXIV patcher errors.

THIS WILL TAKE A LONG TIME - just be patient!

Press any key to start downloading patches...
```

## Credits

- [Final Fantasy XIV Online - Patch Files](https://docs.google.com/spreadsheets/d/1lmVTLEj7oXx_JbUPBiWlSf1xW9hitwIgAvfQq3QzzFE/edit#gid=0)
