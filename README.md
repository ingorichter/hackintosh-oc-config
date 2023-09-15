# hackintosh-oc-config
OpenCore configuration of my hackintosh

This configuration is based on the great work of https://github.com/baughmann/designaire-z390-intel-i9-9900k-opencore

I made a couple of changes to accomodate the latest version of OpenCore. At the time of the update it was 0.7.8
In addition to get my Fenvi Wifi/BT Card to work with macOS 12.x I added from [BrcmPatchRAM](https://github.com/acidanthera/BrcmPatchRAM).

I needed
- BlueToolFixup.kext
- BrcmPatchRAM3.kext

That resolved the BT issues I was seeing.

# Update Notes

- September 2023: I updated my config and used https://github.com/joostiphone/Z390-Hackintosh-Joost for my machine. The machine configs are nearly identical and the config worked fine for my machine. I only needed to fix the bluetooth issue with my Fenvi card. After some trial and error with different kexts, I was able to get it to work. The config.plist contains the latest config. The only thing that I didn't get to work was unlock with my Apple Watch. If anybody has any idea what might be the reason or knows a solution, I'm happy to hear about it.

# BIOS Config

I updated my Bios to F9 and reset all settings. I followed the recommendations from https://github.com/baughmann/designaire-z390-intel-i9-9900k-opencore/blob/master/BIOS.md

[Here](BiosSettings.md)