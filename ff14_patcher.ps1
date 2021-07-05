# Hide progress, which greatly increases download speeds
$ProgressPreference = 'SilentlyContinue'

# Array of Patches
# https://docs.google.com/spreadsheets/d/1lmVTLEj7oXx_JbUPBiWlSf1xW9hitwIgAvfQq3QzzFE/edit#gid=0
$patches = @(
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001a.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001b.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001c.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001d.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001e.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001f.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001g.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001h.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001i.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001j.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001k.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001l.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001m.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001n.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2017.07.11.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2017.09.24.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2017.10.11.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2017.10.31.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2017.11.24.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2018.01.12.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2018.02.09.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2018.04.27.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2018.05.26.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2018.06.19.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2018.07.18.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2018.09.05.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2018.10.19.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2018.12.15.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.01.26.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.03.12.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.03.15.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.04.16.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.05.09.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.05.29.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.05.29.0001.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.05.31.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.06.07.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.07.09.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.07.10.0001.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.10.11.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.10.16.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.11.02.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.11.19.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.12.19.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.01.31.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.01.31.0001.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.02.27.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.03.24.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.03.27.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.07.21.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.07.31.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.08.01.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.08.18.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.08.19.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.08.27.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.08.28.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.09.15.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.10.02.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.10.06.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.10.21.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.10.21.0001.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.11.24.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.12.01.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.12.02.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.12.15.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.12.25.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.12.29.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.01.14.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.01.27.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.01.28.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.02.09.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.02.10.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.03.26.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.03.26.0001.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.03.26.0002.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.03.26.0003.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.03.30.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.04.06.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.04.07.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.04.20.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.04.21.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.04.29.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.05.07.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.05.17.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.05.18.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.05.28.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.05.29.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.06.15.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.06.16.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/H2017.06.01.0000.0001a.patch"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/H2017.06.01.0000.0001b.patch"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/H2017.06.01.0000.0001c.patch"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/H2017.06.01.0000.0001d.patch"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/D2017.09.24.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/D2018.09.05.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/D2019.11.06.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/D2020.03.26.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/D2021.01.15.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/D2021.03.26.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/D2021.05.14.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2017.03.18.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2017.05.26.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2017.05.26.0001.0000.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2017.05.26.0002.0000.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2017.06.27.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2017.09.24.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2018.01.12.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2018.02.23.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2018.04.27.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2018.07.18.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2018.09.05.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2018.12.14.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2019.01.26.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2019.03.12.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2019.05.29.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2019.12.04.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2020.09.17.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2021.01.15.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2021.03.26.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2021.03.31.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2021.04.29.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2019.04.02.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2019.05.29.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2019.05.29.0001.0000.patch"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2019.05.29.0002.0000.patch"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2019.07.09.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2019.10.11.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2020.01.31.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2020.07.21.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2020.09.15.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2020.11.24.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2021.01.14.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2021.03.26.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2021.04.29.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2021.05.12.0000.0001.patch"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2021.05.14.0000.0000.patch"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2021.05.29.0000.0000.patch"
)

Write-Host @"
######################################
##      FFXIV Patch Downloader      ##
######################################

This script will download ALL of the patches for FFXIV and is
indended to be used as a workaround for many common FFXIV Launcher errors.

THIS WILL TAKE A LONG TIME - just be patient!

"@

Write-Host "Press any key to start downloading patches..."
$Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown') | Out-Null

# Download all of the patches
Write-Host "Downloading $($patches.Count) patches..."
$i = 1
foreach ($p in $patches) {
    # Parse patch ID and name, this sets a magic "$matches" variable
    $p -match "https?:\/\/.+\/(?<id>\w+)\/(?<name>[\w\.]+)" | Out-Null

    # Create the necessary folder structure for patches
    New-Item -Force -ItemType "directory" -Path "patches\$($matches['id'])\patch" | Out-Null

    # Attempt to download patch up to 3 times before failing
    $retries = 0
    Write-Host "$($i): $($matches['name'])"
    while ($true) {
        try {
            Write-Host -NoNewLine "`tDownloading... "
            Invoke-WebRequest -Uri "$p" -OutFile "patches\$($matches['id'])\patch\$($matches['name'])" -UserAgent "FFXIV PATCH CLIENT"
            Write-Host "DONE!"
            break
        } catch {
            Write-Host "ERROR - $($_.Exception.Message)"
            if ($retries -lt 2) {
                $retries++
                Start-Sleep -Seconds 1
            } else {
                Write-Host "`tToo many failures - giving up"
                break
            }
        }
    }
    $i++
}

# Done!
Write-Host -NoNewLine "Downloads completed, press any key to exit..."
$Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown') | Out-Null
