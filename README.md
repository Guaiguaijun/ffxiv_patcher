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
indended to be used as a workaround for many common FFXIV Launcher errors.

THIS WILL TAKE A LONG TIME - just be patient!

Press any key to start downloading patches...
Downloading 137 patches...
#1 [4e9a232b]: D2017.07.11.0000.0001.patch
        Downloading... DONE!
#2 [4e9a232b]: D2017.09.24.0000.0001.patch
        Validating existing file... PASS!
#3 [4e9a232b]: D2017.10.11.0000.0001.patch
        Downloading...
...
```

**NOTE:** The script will output each patches Expansion ID and Patch Name, eg: `[4e9a232b]: D2017.10.11.0000.0001.patch`  
`4e9a232b` would be the expansion ID, and `D2017.10.11.0000.0001.patch` is the name of the patch itself.

### Using with the Launcher

Due to how FFXIV's patcher works, you will need to **manually** move the patches over one-by-one for each patch it attempts to download.


1. Start the FFXIV Launcher and begin downloading the patch.
2. Cancel the download after a few seconds.
3. On your PC, go to `Documents\My Games\FINAL FANTASY XIV - A Realm Reborn\downloads\ffxivpatch`
4. Go into the folder for the expansion the patch is for (see above on how to get that)
5. Copy the patch itself into that folder and overwrite any files.
6. Login to FFXIV launcher again and let it validate, install, and move to the next patch.
7. Repeat for all patches.

## Credits

- [Final Fantasy XIV Online - Patch Files](https://docs.google.com/spreadsheets/d/1lmVTLEj7oXx_JbUPBiWlSf1xW9hitwIgAvfQq3QzzFE/edit#gid=0)
