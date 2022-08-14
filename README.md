# hackintosh-oc-config
OpenCore configuration of my hackintosh

This configuration is based on the great work of https://github.com/baughmann/designaire-z390-intel-i9-9900k-opencore

The configuration in the `newconfig` branch is based on the work of https://github.com/joostiphone/Z390-Hackintosh-Joost

I made a couple of changes to accomodate the latest version of OpenCore. At the time of the update it was 0.7.8
In addition to get my Fenvi Wifi/BT Card to work with macOS 12.x I added from [BrcmPatchRAM](https://github.com/acidanthera/BrcmPatchRAM).

I needed
- BlueToolFixup.kext
- BrcmPatchRAM3.kext

That resolved the BT issues I was seeing.

# BIOS Config

I updated my Bios to F9 and reset all settings. I followed the recommendations from https://github.com/baughmann/designaire-z390-intel-i9-9900k-opencore/blob/master/BIOS.md

[Here](BiosSettings.md)