# ASUS G750JM BSI7N23
## OS X El Capitan 10.11.15  

### Not Working
 - GTX860M is disabled in my DSDT to conserve on power. (Nvidia Optimus is not yet supported so might as well disable it.)

### Maybe working / Work in Progress.
  - Thunderbolt is detected but no DROM forces thunderbolt v2. (This laptop is Thunderbolt v1)
    - The only device I have tested is a My Passport Pro and it was detected correctly in System Report but no disk drive was available.
  - Sleep causes sound to not work on wakeup
    - TODO: Fix this using RehabMan's CodecCommander and hda-verb
 
### Working
Everything else. Please let me know if anything else is not working.

### Optical Drive
I've kept the Optical drive SSDT in this repo for those that need it. I've replaced it with a 3rd SSDT 
so I can't verify if it is working. Please let me know if it is not.

### Keyboard and Toucpad

My keyboard / touchpad settings are very opiniotaed. Please use the script in the misc folder to 
change them to your liking or find the original kexts from EMlyDinEsH and DSDT patches from Arise.

## Thanks

Thanks to tonymacx86 ,Arise, EMlyDinEsH, toleda, Arise, and Rehabman. Without their amazing work nothing 
this close to perfection would be possible. 

