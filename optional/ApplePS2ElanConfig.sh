####################################################################
echo "##################################################" ##########
echo "######### Credits: Ramalama & EMlyDinEsH #########" ##########
echo "##################################################" ##########
####################################################################
## Download: http://forum.osxlatitude.com/index.php?/topic/1948-elan-touchpad-driver-mac-os-x/
## TouchPad Settings: http://forum.osxlatitude.com/index.php?/topic/5966-details-about-the-elan-touchpad-features/
## KeyBoard Settings: http://forum.osxlatitude.com/index.php?/topic/5969-details-about-the-enhanced-keyboard-for-elan-touchpad-driver/
## Issues Thread: http://forum.osxlatitude.com/index.php?/topic/1966-elan-touchpad-driver-issues/
####################################################################
## CHANGELOG:
##		v1.0 -Introducing this SCRIPT!
####################################################################
## ABOUT:
##		For what i need this Script?
##		-IF NEW SETTINGS ARE IN THE DRIVER OR SOME REMOVED:
##			If in the driver any setting was removed, the
##			Scripts simply doesn't find the line and it
##			this "not found" settings wont be modified.
##			If there are new Settings in the Driver,
##			they will be not touched and remain "DEFAULT".
##		-YOU HAVE A SIMPLE OVERVIEW OF TOUCHPAD SETTINGS.
##		-YOU DON'T NEED TO EDIT THE DRIVER ON EVERY NEW UPDATE:
##			If there are new Touchpad Driver Versions,
##			you had always to edit the Info.plist from new,
##			instead of simply replacing them...
##			Especially if there are new Features in Info.plist.
##			This script only Modifies the Settings, all new Settings,
##			that aren't defined in this script stays "DEFAULT",
##			They will not be touched.
##		-IF YOU ARE A TESTER:
##			This Script installs the Driver twice fast as
##			"Kext Utility" for example.
##			You have the Option to Install it Default or with your
##			defined Settings.
##		-UPDATES OF THE SCRIPT ITSELF:
##			Copy your config Settings over to new ScriptVersion.
####################################################################
#######                  -------> Description <-------
Num_Lock_On="DEFAULT"                               # YES or NO
Disable_NumLock_LED="DEFAULT"                       # YES or NO
Swap_alt_and_windows_key="YES"                  # YES or NO
Make_context_menu_key_into_key="92"            # NO or Key Number (Thread)
Make_delete_key_into_cmd_and_backspace="DEFAULT"    # YES or NO
Make_right_control_into_key="DEFAULT"               # NO or Key Number (Thread)

Using_AsusBacklight="NO"                       # YES or NO
Enable_Asus_KBacklight="YES"                    # YES or NO
KBacklight_has_16_Levels="NO"                  # YES or NO
IdleAsusKBlightAutoOff="NO"                    # YES or NO
IdleAsusKBlightTimeOut="20"                    # Timeout: Default=10 Secounds

Enable_Extended_Functions="DEFAULT"                 # YES or NO
Make_shift_and_caps_into_Fn_key="DEFAULT"           # YES or NO
Fn_keys_Mode="1"                              # 1,2,3 DEFAULT=2
Fn_keys_Layout="DEFAULT"                            # Read Threa
#######		"DEFAULT" = Doesn't touch the Default Setting in the Driver
#######		"YES" or "NO" = Enable or Disable any Feature
#######		TimeOuts: Always in Secounds: 0.5/0.7/1/2/3/4.8 etc...
gct=( #		1-32 Actions: You can Choose this Actions for Gestures:
				"Disabled"                 # 0 = Turn OFF
				"Applications Switch"      # 1
				"App close"                # 2
				"Launchpad"                # 3
				"Mission control"          # 4
				"Dashboard"                # 5
				"Left Space"               # 6
				"Right Space"              # 7
				"Application windows"      # 8
				"Minimize app"             # 9
				"Toggle Full screen"       # 10
				"Backward"                 # 11
				"Forward"                  # 12
				"Desktop"                  # 13
				"Notification center"      # 14
				"Show Properties/Info"     # 15
				"Hide/Show Dock"           # 16
				"Notification center"      # 17
				"Zoom reset"               # 18
				"Finder"                   # 19
				"Force Quit"               # 20
				"F13 - F24"                # 21-32
) ##################################################################
####################################################################
#########################  SCRIPT SETTINGS #########################
####################################################################
####################################################################


                    ### ApplePS2Elan Settings ###
Destination_of_ApplePS2Elan="Downloads/ApplePS2ElanTouchpad.kext"
# Desktop: "Desktop/ApplePS2..." Dokuments: "Dokuments/ApplePS2..."

Enable_ApplePS2Elan_Customization="YES"
# Enable/Disable Mouse/Keyboard Customizations

Enable_Touchpad_Settings="YES"                # Change Settings of Touchpad
Enable_Keyboard_Settings="YES"                # Change Settings of Keyboard
# If you dont want to edit Settings (Just install for Example)

Install_ApplePS2Elan_to_SLE="NO"                         # YES or NO
Make_BackUp_of_ApplePS2Elan_in_SLE="NO"                  # YES or NO


                    ### AsusNBFnKeys Settings ###
Destination_of_AsusNBFnKeys="Downloads/AsusNBFnKeys.kext"
# Desktop: "Desktop/AsusNBFnKeys..." Dokuments: "Dokuments/AsusNBFnKeys..."

Enable_AsusNBFnKeys_Customization="YES"
# Enable/Disable FN Keys Customizations

Install_AsusNBFnKeys_to_SLE="NO"                         # YES or NO
Make_BackUp_of_AsusNBFnKeys_in_SLE="NO"                  # YES or NO


                ### ApplePS2Elan and AsusNBFnKeys ###
Copy_to_CLOVER_kext_dir="YES"                             # YES or NO
CLOVER_kext_dir="/Volumes/EFI/EFI/CLOVER/kexts/Other"

Copy_to_CHAMELEON_kext_dir="NO"                          # YES or NO
CHAMELEON_kext_dir="/Extra/Extensions"

Reboot_after_Install="YES"                                # YES or NO

####################################################################
####################################################################
########################  TOUCHPAD SETTINGS ########################
####################################################################
####################################################################

####################################################################
##############################  MODES ##############################
####################################################################
v3HWLegacyMode="NO"          # YES or NO
v4HW3ButtonsSimulated="YES"   # YES or NO #Enable Touchpad Left/Middle/Right Buttons
v4HWHasPhysicalButtons="YES"  # YES or NO #Enable Physical Left/Right Buttons
MulFingDoubleTaps="DEFAULT"       # YES or NO

AccidentalInputTimeOut="DEFAULT"
# NO or TimeOut in Secounds! #TimeOut to enable touchpad after KeyInputs

PointerResolution="DEFAULT"
# Default=1600 #Change Pointer moving speed
PointerAccelerationMode="0"
# Default=0, Possible=1/2/3/4 #Change Pointer Acceleration
PointerAccelMode4Value="DEFAULT"
# If you set PointerAccelerationMode to 4,
# You can set with this Value your own Pointer Acceleration
# Possible: 4-16

FingersPressTimeOut="DEFAULT"  # Default=0.7 Secounds

####################################################################
########################  2Finger Scrolling ########################
####################################################################
Auto2FingScroll="NO"             # YES or NO
# Like Continious-scroll but without holding fingers
ScrollStopTimeOut="0"          # Default=0.5 Secounds
# If you don't move your fingers you get 0.5 Secounds Continious Scroll

Sling2FingScroll="NO"            # YES or NO
SlingEffectHoldTimeOut="DEFAULT"      # Default=1.0 Secounds
#Starts ScrollSling after hold timeout.

LinearScrolling="NO"             # YES or NO
Continous2FingScroll="NO"        # YES or NO
Inertial2FingScroll="YES"         # YES or NO
ScrollSlingEffect="NO"           # YES or NO
NoHorizScrollInertia="DEFAULT"        # YES or NO

AccelerationPrefValue="DEFAULT"       # Default=0 #Possible 0/1/2/3/4
ScrollResolution="DEFAULT"
# Default=1600 #Change Scrolling speed
s2FScrollAccelMode="2"
# Default=0, Possible=1/2/3 #Change Scrolling Acceleration
SlowScrollFilterValue="0"
# Default=5, Possible=0-100
# Filtering slow Finger movement out.

####################################################################
#########################  Edge Scrolling ##########################
####################################################################
AutoEdgeScroll="NO"               # YES or NO
# Like Continious-scroll but without holding fingers

SlingEdgeScroll="DEFAULT"              # YES or NO
EdgeScrolling="NO"                # YES or NO
InertialEdgeScroll="DEFAULT"           # YES or NO
ContinousEdgeScroll="NO"          # YES or NO
CircularEdgeScroll="DEFAULT"           # YES or NO

####################################################################
########################  1Finger Gestures #########################
####################################################################
v4HW2FingersMove="YES"            # YES or NO, Move Pointer with 2 Fingers

TrackpadTappingCorners="NO"      # YES or NO
CornerTapStartABS="DEFAULT"           # YES or NO
DisableBottomCornersTap="DEFAULT"     # YES or NO
FingerPressDrag="DEFAULT"           # YES or NO

FLiftDragReleaseTimeOut="DEFAULT"      # TimeOut for releasing DragMode. Default=0.3 Secound
FingerPressDragPressure="DEFAULT"      # Pressure to activate DragMode. Default=0 Possible 0-100
FingerPressDragTimeOut="DEFAULT"       # Default=1.2 Secounds #Tap&Hold Drag lift TimeOut

EdgeSwipe="YES"                   # YES or NO
EdgeSwipeFingers="2"            # 1=One Finger / 2=Two Fingers / 0=Both
EdgeSwipeBottom="NO"             # NO=Disable / 1-32=Action
EdgeSwipeLeft="NO"               # NO=Disable / 1-32=Action
EdgeSwipeRight="DEFAULT"              # NO=Disable / 1-32=Action
EdgeSwipeTop="NO"                # NO=Disable / 1-32=Action

####################################################################
########################  2Finger Gestures #########################
####################################################################
PinchZoom="DEFAULT"                   # YES or NO
Rotation="DEFAULT"                    # YES or NO
CircularRotate="DEFAULT"              # YES or NO
s2FingersPressAction="NO"        # NO=Disable / 1-32=Action

####################################################################
########################  3Finger Gestures #########################
####################################################################
s3FingerSwipes="DEFAULT"              # YES or NO
s3FingerSwipeDownAction="3"     # NO=Disable / 1-32=Action
s3FingerSwipeLeftAction="7"     # NO=Disable / 1-32=Action
s3FingerSwipeRightAction="6"    # NO=Disable / 1-32=Action
s3FingerSwipeUpAction="4"       # NO=Disable / 1-32=Action
s3FingersPressAction="4"        # NO=Disable / 1-32=Action

####################################################################
########################  4Finger Gestures #########################
####################################################################
s4FingerSwipes="DEFAULT"              # YES or NO
s4FingerSwipeDownAction="9"     # NO=Disable / 1-32=Action
s4FingerSwipeLeftAction="17"     # NO=Disable / 1-32=Action
s4FingerSwipeRightAction="5"    # NO=Disable / 1-32=Action
s4FingerSwipeUpAction="16"       # NO=Disable / 1-32=Action
s4FingersPressAction="13"        # NO=Disable / 1-32=Action
s4FingersTapAction="NO"          # NO=Disable / 1-32=Action

####################################################################
########################  5Finger Gestures #########################
####################################################################
s5FingersPinchAction="DEFAULT"        # NO=Disable / 1-32=Action
s5FingersPressAction="8"        # NO=Disable / 1-32=Action
s5FingersTapAction="4"          # NO=Disable / 1-32=Action







####################################################################
####################################################################
########################  KEYBOARD SETTINGS ########################
####################################################################
####################################################################

KeyBoardNumLockOn="YES"                         # YES or NO
Use_ISO_Layout="NO"                            # YES or NO
Keyboard_type_ID="48"                          # ID Read Keyboard Thread

Num_Lock_On="DEFAULT"                               # YES or NO
Disable_NumLock_LED="DEFAULT"                       # YES or NO
Swap_alt_and_windows_key="YES"                  # YES or NO
Make_context_menu_key_into_key="NO"            # NO or Key Number (Thread)
Make_delete_key_into_cmd_and_backspace="DEFAULT"    # YES or NO
Make_right_control_into_key="DEFAULT"               # NO or Key Number (Thread)

Using_AsusBacklight="NO"                       # YES or NO
Enable_Asus_KBacklight="YES"                    # YES or NO
KBacklight_has_16_Levels="NO"                  # YES or NO
IdleAsusKBlightAutoOff="NO"                    # YES or NO
IdleAsusKBlightTimeOut="200"                    # Timeout: Default=10 Secounds

Enable_Extended_Functions="DEFAULT"                 # YES or NO
Make_shift_and_caps_into_Fn_key="DEFAULT"           # YES or NO
Fn_keys_Mode="1"                              # 1,2,3 DEFAULT=2
Fn_keys_Layout="DEFAULT"                            # Read Thread DEFAULT=NONE

#################### Fn Keys Mode 1 ####################
######## Possible Options: F1 - F12, ArrowRight, #######
#### ArrowDown, ArrowLeft, Pause, "NO"=Disable #########
m1_Misson_Control="F1"
m1_Launchpad="F2"
m1_KBBacklightDown="F3"
m1_KBBacklightUp="F4"
m1_BrightnessDown="F5"
m1_BrightnessUp="F6"
m1_MediaPrevious="F7"
m1_MediaPlayPause="F8"
m1_MediaNext="F9"
m1_VolumeMute="F10"
m1_VolumeDown="F11"
m1_VolumeUp="F12"
m1_SleepDisplay="NO"
m1_VideoMirror="NO"
m1_Touchpad="Pause"

#################### Fn Keys Mode 2 ####################
######## Possible Options: F1 - F12, ArrowRight, #######
#### ArrowDown, ArrowLeft, Pause, "NO"=Disable #########
m2_SystemSleep="DEFAULT"
m2_Misson_Control="DEFAULT"
m2_Launchpad="DEFAULT"
m2_KBBacklightDown="DEFAULT"
m2_KBBacklightUp="DEFAULT"
m2_BrightnessDown="DEFAULT"
m2_BrightnessUp="DEFAULT"
m2_MediaPrevious="DEFAULT"
m2_MediaPlayPause="DEFAULT"
m2_MediaNext="DEFAULT"
m2_VolumeMute="DEFAULT"
m2_VolumeDown="DEFAULT"
m2_VolumeUp="DEFAULT"
m2_SleepDisplay="DEFAULT"
m2_VideoMirror="DEFAULT"
m2_Touchpad="DEFAULT"

################## Extended Functions #######################
# Possible Options: "ALT CMD ESC", "ALT CMD D", "CMD H" ... #
###### You can set here any key combination you want! #######
# "NO"=Disable ##############################################
F13="DEFAULT"
F14="DEFAULT"
F15="DEFAULT"
F16="DEFAULT"
F17="DEFAULT"
F18="DEFAULT"
F19="DEFAULT"
F20="DEFAULT"
F21="DEFAULT"
F22="DEFAULT"
F23="DEFAULT"
F24="DEFAULT"






####################################################################
####################################################################
#####################  ASUS FN Keys - SETTINGS #####################
####################################################################
####################################################################
HasSensorALS="NO"                               # "YES" or "NO"
ALSEnabledAtBoot="DEFAULT"                           # "YES" or "NO"
# If you have Light Sensor in your Laptop, choose "YES"
# You can turn LightSensor On/Off with FN+A Manually or with
# ALSEnabledAtBoot="YES" to turn ON, on boot.

DimBacklightOnACDC="YES"                         # "YES" or "NO"
# Dim or Increase Brightness on AC/Battery Switching!
SoftDisplayBacklightOff="DEFAULT"                      # "YES" or "NO"
# Alternative Method for FN+F7 is Standart doesn't work!

F3KeyFunction="DEFAULT"                              # 0-5
F4KeyFunction="DEFAULT"                              # 0-5
# 0 Default (KBLight Down/UP) -- 1 Launchpad -- 2 Misson control
# 3 Dashboard -- 4 Desktop -- 5 Application window

HasKeyboardBacklight="YES"                       # "YES" or "NO"
KeyboardHas16BLightLvls="NO"                    # "YES" or "NO"
KBackLightlvlAtBoot="2"                       # 0-3 or 0-16 or -1=NVRAM
IdleKBacklightAutoOff="NO"                      # "YES" or "NO"
IdleKBacklightAutoOffTimeout="200"               # Timeout: Default=10 Secounds

HasMediaFnKeys="NO"                             # "YES" or "NO"
# Do you have special Media Keys? (Not Fn+F1-F13)

DisplayUsesNvidiaGPU="NO"                       # "YES" or "NO"

MediaKeysDoFastRewind="NO"                        # "YES" or "NO"
# FN+C, FN+V Does Fast/Rewind instead of Next/Prevous











#########################################################################
##############################  SRIPT PART ##############################
#########################################################################
##################### Doesn't Modify here Anything! #####################
#########################################################################
if [[ $Enable_ApplePS2Elan_Customization == "YES" ]]; then       # CUSTOM SETTINGS START #
if [ ! -d "$Destination_of_ApplePS2Elan" ]; then
echo " --- --- ERROR --- ---  --- --- ERROR --- --- "
echo "FILE: ~/$Destination_of_ApplePS2Elan --- Doesnt exist!!!"
echo " --- --- ERROR --- ---  --- --- ERROR --- --- "; else
TOUCHPADPLIST="$Destination_of_ApplePS2Elan/Contents/Info.plist"
TOUCHPADPLIST2="$Destination_of_ApplePS2Elan/Contents/Info2.plist"
KEYBOARDPLIST="$Destination_of_ApplePS2Elan/Contents/PlugIns/ApplePS2Keyboard.kext/Contents/Info.plist"
KEYBOARDPLIST2="$Destination_of_ApplePS2Elan/Contents/PlugIns/ApplePS2Keyboard.kext/Contents/Info2.plist"
echo "### ---> Begin Customization of ApplePS2Elan Driver <--- ###"
if [[ $Enable_Touchpad_Settings == "YES" ]]; then     # TOUCHPAD SETTINGS START #
	if [[ $v3HWLegacyMode == "YES" ]]; then
		perl -0777 -pe 's|<key>v3HWLegacyMode</key>\s*.*>|<key>v3HWLegacyMode</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> v3HWLegacyMode - Enabled"; fi
	if [[ $v3HWLegacyMode == "NO" ]]; then
		perl -0777 -pe 's|<key>v3HWLegacyMode</key>\s*.*>|<key>v3HWLegacyMode</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> v3HWLegacyMode - Disabled"; fi
	if [[ $v4HW3ButtonsSimulated == "YES" ]]; then
		perl -0777 -pe 's|<key>v4HW3ButtonsSimulated</key>\s*.*>|<key>v4HW3ButtonsSimulated</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> v4HW3ButtonsSimulated - Enabled"; fi
	if [[ $v4HW3ButtonsSimulated == "NO" ]]; then
		perl -0777 -pe 's|<key>v4HW3ButtonsSimulated</key>\s*.*>|<key>v4HW3ButtonsSimulated</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> v4HW3ButtonsSimulated - Disabled"; fi
        if [[ $v4HWHasPhysicalButtons == "YES" ]]; then
		perl -0777 -pe 's|<key>v4HWHasPhysicalButtons</key>\s*.*>|<key>v4HWHasPhysicalButtons</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> v4HWHasPhysicalButtons - Enabled"; fi
	if [[ $v4HWHasPhysicalButtons == "NO" ]]; then
		perl -0777 -pe 's|<key>v4HWHasPhysicalButtons</key>\s*.*>|<key>v4HWHasPhysicalButtons</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> v4HWHasPhysicalButtons - Disabled"; fi
	if [[ $MulFingDoubleTaps == "YES" ]]; then
		perl -0777 -pe 's|<key>MulFingDoubleTaps</key>\s*.*>|<key>MulFingDoubleTaps</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> MulFingDoubleTaps - Enabled"; fi
	if [[ $MulFingDoubleTaps == "NO" ]]; then
		perl -0777 -pe 's|<key>MulFingDoubleTaps</key>\s*.*>|<key>MulFingDoubleTaps</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> MulFingDoubleTaps - Disabled"; fi
	if [[ $FingerPressDrag == "YES" ]]; then
		perl -0777 -pe 's|<key>FingerPressDrag</key>\s*.*>|<key>FingerPressDrag</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> FingerPressDrag - Enabled"; fi
	if [[ $FingerPressDrag == "NO" ]]; then
		perl -0777 -pe 's|<key>FingerPressDrag</key>\s*.*>|<key>FingerPressDrag</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> FingerPressDrag - Disabled"; fi
	if [[ $LinearScrolling == "YES" ]]; then
		perl -0777 -pe 's|<key>LinearScrolling</key>\s*.*>|<key>LinearScrolling</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> LinearScrolling - Enabled"; fi
	if [[ $LinearScrolling == "NO" ]]; then
		perl -0777 -pe 's|<key>LinearScrolling</key>\s*.*>|<key>LinearScrolling</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> LinearScrolling - Disabled"; fi
        if [[ $Sling2FingScroll == "YES" ]]; then
		perl -0777 -pe 's|<key>Sling2FingScroll</key>\s*.*>|<key>Sling2FingScroll</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> Sling2FingScroll - Enabled"; fi
	if [[ $Sling2FingScroll == "NO" ]]; then
		perl -0777 -pe 's|<key>Sling2FingScroll</key>\s*.*>|<key>Sling2FingScroll</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> Sling2FingScroll - Disabled"; fi
        if [[ $SlingEdgeScroll == "YES" ]]; then
		perl -0777 -pe 's|<key>SlingEdgeScroll</key>\s*.*>|<key>SlingEdgeScroll</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> SlingEdgeScroll - Enabled"; fi
	if [[ $SlingEdgeScroll == "NO" ]]; then
		perl -0777 -pe 's|<key>SlingEdgeScroll</key>\s*.*>|<key>SlingEdgeScroll</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> SlingEdgeScroll - Disabled"; fi
	if [[ $Continous2FingScroll == "YES" ]]; then
		perl -0777 -pe 's|<key>Continous2FingScroll</key>\s*.*>|<key>Continous2FingScroll</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> Continous2FingScroll - Enabled"; fi
	if [[ $Continous2FingScroll == "NO" ]]; then
		perl -0777 -pe 's|<key>Continous2FingScroll</key>\s*.*>|<key>Continous2FingScroll</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> Continous2FingScroll - Disabled"; fi
        if [[ $Auto2FingScroll == "YES" ]]; then
		perl -0777 -pe 's|<key>Auto2FingScroll</key>\s*.*>|<key>Auto2FingScroll</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> Auto2FingScroll - Enabled"; fi
	if [[ $Auto2FingScroll == "NO" ]]; then
		perl -0777 -pe 's|<key>Auto2FingScroll</key>\s*.*>|<key>Auto2FingScroll</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> Auto2FingScroll - Disabled"; fi
        if [[ $AutoEdgeScroll == "YES" ]]; then
		perl -0777 -pe 's|<key>AutoEdgeScroll</key>\s*.*>|<key>AutoEdgeScroll</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> AutoEdgeScroll - Enabled"; fi
	if [[ $AutoEdgeScroll == "NO" ]]; then
		perl -0777 -pe 's|<key>AutoEdgeScroll</key>\s*.*>|<key>AutoEdgeScroll</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> AutoEdgeScroll - Disabled"; fi
	if [[ $Inertial2FingScroll == "YES" ]]; then
		perl -0777 -pe 's|<key>Inertial2FingScroll</key>\s*.*>|<key>Inertial2FingScroll</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> Inertial2FingScroll - Enabled"; fi
	if [[ $Inertial2FingScroll == "NO" ]]; then
		perl -0777 -pe 's|<key>Inertial2FingScroll</key>\s*.*>|<key>Inertial2FingScroll</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> Inertial2FingScroll - Disabled"; fi
	if [[ $NoHorizScrollInertia == "YES" ]]; then
		perl -0777 -pe 's|<key>NoHorizScrollInertia</key>\s*.*>|<key>NoHorizScrollInertia</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> NoHorizScrollInertia - Enabled"; fi
	if [[ $NoHorizScrollInertia == "NO" ]]; then
		perl -0777 -pe 's|<key>NoHorizScrollInertia</key>\s*.*>|<key>NoHorizScrollInertia</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> NoHorizScrollInertia - Disabled"; fi
	if [[ $EdgeScrolling == "YES" ]]; then
		perl -0777 -pe 's|<key>EdgeScrolling</key>\s*.*>|<key>EdgeScrolling</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> EdgeScrolling - Enabled"; fi
	if [[ $EdgeScrolling == "NO" ]]; then
		perl -0777 -pe 's|<key>EdgeScrolling</key>\s*.*>|<key>EdgeScrolling</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> EdgeScrolling - Disabled"; fi
	if [[ $InertialEdgeScroll == "YES" ]]; then
		perl -0777 -pe 's|<key>InertialEdgeScroll</key>\s*.*>|<key>InertialEdgeScroll</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> InertialEdgeScroll - Enabled"; fi
	if [[ $InertialEdgeScroll == "NO" ]]; then
		perl -0777 -pe 's|<key>InertialEdgeScroll</key>\s*.*>|<key>InertialEdgeScroll</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> InertialEdgeScroll - Disabled"; fi
	if [[ $ContinousEdgeScroll == "YES" ]]; then
		perl -0777 -pe 's|<key>ContinousEdgeScroll</key>\s*.*>|<key>ContinousEdgeScroll</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> ContinousEdgeScroll - Enabled"; fi
	if [[ $ContinousEdgeScroll == "NO" ]]; then
		perl -0777 -pe 's|<key>ContinousEdgeScroll</key>\s*.*>|<key>ContinousEdgeScroll</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> ContinousEdgeScroll - Disabled"; fi
	if [[ $CircularEdgeScroll == "YES" ]]; then
		perl -0777 -pe 's|<key>CircularEdgeScroll</key>\s*.*>|<key>CircularEdgeScroll</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> CircularEdgeScroll - Enabled"; fi
	if [[ $CircularEdgeScroll == "NO" ]]; then
		perl -0777 -pe 's|<key>CircularEdgeScroll</key>\s*.*>|<key>CircularEdgeScroll</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> CircularEdgeScroll - Disabled"; fi
	if [[ $TrackpadTappingCorners == "YES" ]]; then
		perl -0777 -pe 's|<key>TrackpadTappingCorners</key>\s*.*>|<key>TrackpadTappingCorners</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> TrackpadTappingCorners - Enabled"; fi
	if [[ $TrackpadTappingCorners == "NO" ]]; then
		perl -0777 -pe 's|<key>TrackpadTappingCorners</key>\s*.*>|<key>TrackpadTappingCorners</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> TrackpadTappingCorners - Disabled"; fi
	if [[ $CornerTapStartABS == "YES" ]]; then
		perl -0777 -pe 's|<key>CornerTapStartABS</key>\s*.*>|<key>CornerTapStartABS</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> CornerTapStartABS - Enabled"; fi
	if [[ $CornerTapStartABS == "NO" ]]; then
		perl -0777 -pe 's|<key>CornerTapStartABS</key>\s*.*>|<key>CornerTapStartABS</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> CornerTapStartABS - Disabled"; fi
	if [[ $v4HW2FingersMove == "YES" ]]; then
		perl -0777 -pe 's|<key>v4HW2FingersMove</key>\s*.*>|<key>v4HW2FingersMove</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> v4HW2FingersMove - Enabled"; fi
	if [[ $v4HW2FingersMove == "NO" ]]; then
		perl -0777 -pe 's|<key>v4HW2FingersMove</key>\s*.*>|<key>v4HW2FingersMove</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> v4HW2FingersMove - Disabled"; fi
	if [[ $DisableBottomCornersTap == "YES" ]]; then
		perl -0777 -pe 's|<key>DisableBottomCornersTap</key>\s*.*>|<key>DisableBottomCornersTap</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> DisableBottomCornersTap - Enabled"; fi
	if [[ $DisableBottomCornersTap == "NO" ]]; then
		perl -0777 -pe 's|<key>DisableBottomCornersTap</key>\s*.*>|<key>DisableBottomCornersTap</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> DisableBottomCornersTap - Disabled"; fi
	if [[ $EdgeSwipe == "YES" ]]; then
		perl -0777 -pe 's|<key>EdgeSwipe</key>\s*.*>|<key>EdgeSwipe</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> EdgeSwipe - Enabled"; fi
	if [[ $EdgeSwipe == "NO" ]]; then
		perl -0777 -pe 's|<key>EdgeSwipe</key>\s*.*>|<key>EdgeSwipe</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> EdgeSwipe - Disabled"; fi
	if [[ $PinchZoom == "YES" ]]; then
		perl -0777 -pe 's|<key>PinchZoom</key>\s*.*>|<key>PinchZoom</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> PinchZoom - Enabled"; fi
	if [[ $PinchZoom == "NO" ]]; then
		perl -0777 -pe 's|<key>PinchZoom</key>\s*.*>|<key>PinchZoom</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> PinchZoom - Disabled"; fi
	if [[ $Rotation == "YES" ]]; then
		perl -0777 -pe 's|<key>Rotation</key>\s*.*>|<key>Rotation</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> Rotation - Enabled"; fi
	if [[ $Rotation == "NO" ]]; then
		perl -0777 -pe 's|<key>Rotation</key>\s*.*>|<key>Rotation</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> Rotation - Disabled"; fi
	if [[ $CircularRotate == "YES" ]]; then
		perl -0777 -pe 's|<key>CircularRotate</key>\s*.*>|<key>CircularRotate</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> CircularRotate - Enabled"; fi
	if [[ $CircularRotate == "NO" ]]; then
		perl -0777 -pe 's|<key>CircularRotate</key>\s*.*>|<key>CircularRotate</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> CircularRotate - Disabled"; fi
	if [[ $s3FingerSwipes == "YES" ]]; then
		perl -0777 -pe 's|<key>3FingerSwipes</key>\s*.*>|<key>3FingerSwipes</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> 3FingerSwipes - Enabled"; fi
	if [[ $s3FingerSwipes == "NO" ]]; then
		perl -0777 -pe 's|<key>3FingerSwipes</key>\s*.*>|<key>3FingerSwipes</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> 3FingerSwipes - Disabled"; fi
	if [[ $s4FingerSwipes == "YES" ]]; then
		perl -0777 -pe 's|<key>4FingerSwipes</key>\s*.*>|<key>4FingerSwipes</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> 4FingerSwipes - Enabled"; fi
	if [[ $s4FingerSwipes == "NO" ]]; then
		perl -0777 -pe 's|<key>4FingerSwipes</key>\s*.*>|<key>4FingerSwipes</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> 4FingerSwipes - Disabled"; fi
	if [[ $KeyBoardNumLockOn == "YES" ]]; then
		perl -0777 -pe 's|<key>KeyBoardNumLockOn</key>\s*.*>|<key>KeyBoardNumLockOn</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> KeyBoardNumLockOn - Enabled"; fi
	if [[ $KeyBoardNumLockOn == "NO" ]]; then
		perl -0777 -pe 's|<key>KeyBoardNumLockOn</key>\s*.*>|<key>KeyBoardNumLockOn</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> KeyBoardNumLockOn - Disabled"; fi
	if [[ $IdleAsusKBlightAutoOff == "YES" ]]; then
		perl -0777 -pe 's|<key>IdleAsusKBlightAutoOff</key>\s*.*>|<key>IdleAsusKBlightAutoOff</key>\n<true/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> IdleAsusKBlightAutoOff - Enabled"; fi
	if [[ $IdleAsusKBlightAutoOff == "NO" ]]; then
		perl -0777 -pe 's|<key>IdleAsusKBlightAutoOff</key>\s*.*>|<key>IdleAsusKBlightAutoOff</key>\n<false/>|' ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		echo "--> IdleAsusKBlightAutoOff - Disabled"; fi
	if [[ $EdgeSwipeFingers != "DEFAULT" && $EdgeSwipeFingers != "YES" && $EdgeSwipeFingers != "NO" ]]; then
		if [[ "$EdgeSwipeFingers" -ge 0 && "$EdgeSwipeFingers" -le 2 ]]; then
			perl -0777 -pe "s|<key>EdgeSwipeFingers</key>\s*.*>|<key>EdgeSwipeFingers</key>\n<integer>$EdgeSwipeFingers</integer>|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
			rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
			echo "--> EdgeSwipeFingers - set to: $EdgeSwipeFingers"; fi; fi
	if [[ $EdgeSwipeBottom != "DEFAULT" && $EdgeSwipeBottom != "YES" ]]; then
		sEdgeSwipeBottom="<integer>$EdgeSwipeBottom</integer>"
		if [[ $EdgeSwipeBottom == 'NO' ]]; then
		sEdgeSwipeBottom="<false/>"; fi
		perl -0777 -pe "s|<key>EdgeSwipeBottom</key>\s*.*>|<key>EdgeSwipeBottom</key>\n$sEdgeSwipeBottom|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		if [[ $EdgeSwipeBottom == 'NO' ]]; then
		echo "--> EdgeSwipeBottom - Disabled"; else
		echo "--> EdgeSwipeBottom - set to ${gct[$EdgeSwipeBottom]}"; fi; fi
	if [[ $EdgeSwipeLeft != "DEFAULT" && $EdgeSwipeLeft != "YES" ]]; then
		sEdgeSwipeLeft="<integer>$EdgeSwipeLeft</integer>"
		if [[ $EdgeSwipeBottom == 'NO' ]]; then
		sEdgeSwipeLeft="<false/>"; fi
		perl -0777 -pe "s|<key>EdgeSwipeLeft</key>\s*.*>|<key>EdgeSwipeLeft</key>\n$sEdgeSwipeLeft|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		if [[ $EdgeSwipeLeft == 'NO' ]]; then
		echo "--> EdgeSwipeLeft - Disabled"; else
		echo "--> EdgeSwipeLeft - set to ${gct[$EdgeSwipeLeft]}"; fi; fi
	if [[ $EdgeSwipeRight != "DEFAULT" && $EdgeSwipeRight != "YES" ]]; then
		sEdgeSwipeRight="<integer>$EdgeSwipeRight</integer>"
		if [[ $EdgeSwipeBottom == 'NO' ]]; then
		sEdgeSwipeRight="<false/>"; fi
		perl -0777 -pe "s|<key>EdgeSwipeRight</key>\s*.*>|<key>EdgeSwipeRight</key>\n$sEdgeSwipeRight|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		if [[ $EdgeSwipeRight == 'NO' ]]; then
		echo "--> EdgeSwipeRight - Disabled"; else
		echo "--> EdgeSwipeRight - set to ${gct[$EdgeSwipeRight]}"; fi; fi
	if [[ $EdgeSwipeTop != "DEFAULT" && $EdgeSwipeTop != "YES" ]]; then
		sEdgeSwipeTop="<integer>$EdgeSwipeTop</integer>"
		if [[ $EdgeSwipeTop == 'NO' ]]; then
		sEdgeSwipeTop="<false/>"; fi
		perl -0777 -pe "s|<key>EdgeSwipeTop</key>\s*.*>|<key>EdgeSwipeTop</key>\n$sEdgeSwipeTop|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		if [[ $EdgeSwipeTop == 'NO' ]]; then
		echo "--> EdgeSwipeTop - Disabled"; else
		echo "--> EdgeSwipeTop - set to ${gct[$EdgeSwipeTop]}"; fi; fi
	if [[ $s2FingersPressAction != "DEFAULT" && $s2FingersPressAction != "YES" ]]; then
		ss2FingersPressAction="<integer>$s2FingersPressAction</integer>"
		if [[ $s2FingersPressAction == 'NO' ]]; then
		ss2FingersPressAction="<false/>"; fi
		perl -0777 -pe "s|<key>2FingersPressAction</key>\s*.*>|<key>2FingersPressAction</key>\n$ss2FingersPressAction|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		if [[ $s2FingersPressAction == 'NO' ]]; then
		echo "--> 2FingersPressAction - Disabled"; else
		echo "--> 2FingersPressAction - set to ${gct[$s2FingersPressAction]}"; fi; fi
	if [[ $s3FingerSwipeDownAction != "DEFAULT" && $s3FingerSwipeDownAction != "YES" ]]; then
		ss3FingerSwipeDownAction="<integer>$s3FingerSwipeDownAction</integer>"
		if [[ $s3FingerSwipeDownAction == 'NO' ]]; then
		ss3FingerSwipeDownAction="<false/>"; fi
		perl -0777 -pe "s|<key>3FingerSwipeDownAction</key>\s*.*>|<key>3FingerSwipeDownAction</key>\n$ss3FingerSwipeDownAction|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		if [[ $s3FingerSwipeDownAction == 'NO' ]]; then
		echo "--> 3FingerSwipeDownAction - Disabled"; else
		echo "--> 3FingerSwipeDownAction - set to ${gct[$s3FingerSwipeDownAction]}"; fi; fi
	if [[ $s3FingerSwipeLeftAction != "DEFAULT" && $s3FingerSwipeLeftAction != "YES" ]]; then
		ss3FingerSwipeLeftAction="<integer>$s3FingerSwipeLeftAction</integer>"
		if [[ $s3FingerSwipeLeftAction == 'NO' ]]; then
		ss3FingerSwipeLeftAction="<false/>"; fi
		perl -0777 -pe "s|<key>3FingerSwipeLeftAction</key>\s*.*>|<key>3FingerSwipeLeftAction</key>\n$ss3FingerSwipeLeftAction|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		if [[ $s3FingerSwipeLeftAction == 'NO' ]]; then
		echo "--> 3FingerSwipeLeftAction - Disabled"; else
		echo "--> 3FingerSwipeLeftAction - set to ${gct[$s3FingerSwipeLeftAction]}"; fi; fi
	if [[ $s3FingerSwipeRightAction != "DEFAULT" && $s3FingerSwipeRightAction != "YES" ]]; then
		ss3FingerSwipeRightAction="<integer>$s3FingerSwipeRightAction</integer>"
		if [[ $s3FingerSwipeRightAction == 'NO' ]]; then
		ss3FingerSwipeRightAction="<false/>"; fi
		perl -0777 -pe "s|<key>3FingerSwipeRightAction</key>\s*.*>|<key>3FingerSwipeRightAction</key>\n$ss3FingerSwipeRightAction|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		if [[ $s3FingerSwipeRightAction == 'NO' ]]; then
		echo "--> 3FingerSwipeRightAction - Disabled"; else
		echo "--> 3FingerSwipeRightAction - set to ${gct[$s3FingerSwipeRightAction]}"; fi; fi
	if [[ $s3FingerSwipeUpAction != "DEFAULT" && $s3FingerSwipeUpAction != "YES" ]]; then
		ss3FingerSwipeUpAction="<integer>$s3FingerSwipeUpAction</integer>"
		if [[ $s3FingerSwipeUpAction == 'NO' ]]; then
		ss3FingerSwipeUpAction="<false/>"; fi
		perl -0777 -pe "s|<key>3FingerSwipeUpAction</key>\s*.*>|<key>3FingerSwipeUpAction</key>\n$ss3FingerSwipeUpAction|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		if [[ $s3FingerSwipeUpAction == 'NO' ]]; then
		echo "--> 3FingerSwipeUpAction - Disabled"; else
		echo "--> 3FingerSwipeUpAction - set to ${gct[$s3FingerSwipeUpAction]}"; fi; fi
	if [[ $s3FingersPressAction != "DEFAULT" && $s3FingersPressAction != "YES" ]]; then
		ss3FingersPressAction="<integer>$s3FingersPressAction</integer>"
		if [[ $s3FingersPressAction == 'NO' ]]; then
		ss3FingersPressAction="<false/>"; fi
		perl -0777 -pe "s|<key>3FingersPressAction</key>\s*.*>|<key>3FingersPressAction</key>\n$ss3FingersPressAction|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		if [[ $s3FingersPressAction == 'NO' ]]; then
		echo "--> 3FingersPressAction - Disabled"; else
		echo "--> 3FingersPressAction - set to ${gct[$s3FingersPressAction]}"; fi; fi
	if [[ $s4FingerSwipeDownAction != "DEFAULT" && $s4FingerSwipeDownAction != "YES" ]]; then
		ss4FingerSwipeDownAction="<integer>$s4FingerSwipeDownAction</integer>"
		if [[ $s4FingerSwipeDownAction == 'NO' ]]; then
		ss4FingerSwipeDownAction="<false/>"; fi
		perl -0777 -pe "s|<key>4FingerSwipeDownAction</key>\s*.*>|<key>4FingerSwipeDownAction</key>\n$ss4FingerSwipeDownAction|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		if [[ $s4FingerSwipeDownAction == 'NO' ]]; then
		echo "--> 4FingerSwipeDownAction - Disabled"; else
		echo "--> 4FingerSwipeDownAction - set to ${gct[$s4FingerSwipeDownAction]}"; fi; fi
	if [[ $s4FingerSwipeLeftAction != "DEFAULT" && $s4FingerSwipeLeftAction != "YES" ]]; then
		ss4FingerSwipeLeftAction="<integer>$s4FingerSwipeLeftAction</integer>"
		if [[ $s4FingerSwipeLeftAction == 'NO' ]]; then
		ss4FingerSwipeLeftAction="<false/>"; fi
		perl -0777 -pe "s|<key>4FingerSwipeLeftAction</key>\s*.*>|<key>4FingerSwipeLeftAction</key>\n$ss4FingerSwipeLeftAction|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		if [[ $s4FingerSwipeLeftAction == 'NO' ]]; then
		echo "--> 4FingerSwipeLeftAction - Disabled"; else
		echo "--> 4FingerSwipeLeftAction - set to ${gct[$s4FingerSwipeLeftAction]}"; fi; fi
	if [[ $s4FingerSwipeRightAction != "DEFAULT" && $s4FingerSwipeRightAction != "YES" ]]; then
		ss4FingerSwipeRightAction="<integer>$s4FingerSwipeRightAction</integer>"
		if [[ $s4FingerSwipeRightAction == 'NO' ]]; then
		ss4FingerSwipeRightAction="<false/>"; fi
		perl -0777 -pe "s|<key>4FingerSwipeRightAction</key>\s*.*>|<key>4FingerSwipeRightAction</key>\n$ss4FingerSwipeRightAction|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		if [[ $s4FingerSwipeRightAction == 'NO' ]]; then
		echo "--> 4FingerSwipeRightAction - Disabled"; else
		echo "--> 4FingerSwipeRightAction - set to ${gct[$s4FingerSwipeRightAction]}"; fi; fi
	if [[ $s4FingerSwipeUpAction != "DEFAULT" && $s4FingerSwipeUpAction != "YES" ]]; then
		ss4FingerSwipeUpAction="<integer>$s4FingerSwipeUpAction</integer>"
		if [[ $s4FingerSwipeUpAction == 'NO' ]]; then
		ss4FingerSwipeUpAction="<false/>"; fi
		perl -0777 -pe "s|<key>4FingerSwipeUpAction</key>\s*.*>|<key>4FingerSwipeUpAction</key>\n$ss4FingerSwipeUpAction|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		if [[ $s4FingerSwipeUpAction == 'NO' ]]; then
		echo "--> 4FingerSwipeUpAction - Disabled"; else
		echo "--> 4FingerSwipeUpAction - set to ${gct[$s4FingerSwipeUpAction]}"; fi; fi
	if [[ $s4FingersPressAction != "DEFAULT" && $s4FingersPressAction != "YES" ]]; then
		ss4FingersPressAction="<integer>$s4FingersPressAction</integer>"
		if [[ $s4FingersPressAction == 'NO' ]]; then
		ss4FingersPressAction="<false/>"; fi
		perl -0777 -pe "s|<key>4FingersPressAction</key>\s*.*>|<key>4FingersPressAction</key>\n$ss4FingersPressAction|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		if [[ $s4FingersPressAction == 'NO' ]]; then
		echo "--> 4FingersPressAction - Disabled"; else
		echo "--> 4FingersPressAction - set to ${gct[$s4FingersPressAction]}"; fi; fi
	if [[ $s4FingersTapAction != "DEFAULT" && $s4FingersTapAction != "YES" ]]; then
		ss4FingersTapAction="<integer>$s4FingersTapAction</integer>"
		if [[ $s4FingersTapAction == 'NO' ]]; then
		ss4FingersTapAction="<false/>"; fi
		perl -0777 -pe "s|<key>4FingersTapAction</key>\s*.*>|<key>4FingersTapAction</key>\n$ss4FingersTapAction|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		if [[ $s4FingersTapAction == 'NO' ]]; then
		echo "--> 4FingersTapAction - Disabled"; else
		echo "--> 4FingersTapAction - set to ${gct[$s4FingersTapAction]}"; fi; fi
	if [[ $s5FingersPinchAction != "DEFAULT" && $s5FingersPinchAction != "YES" ]]; then
		ss5FingersPinchAction="<integer>$s5FingersPinchAction</integer>"
		if [[ $s5FingersPinchAction == 'NO' ]]; then
		ss5FingersPinchAction="<false/>"; fi
		perl -0777 -pe "s|<key>5FingersPinchAction</key>\s*.*>|<key>5FingersPinchAction</key>\n$ss5FingersPinchAction|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		if [[ $s5FingersPinchAction == 'NO' ]]; then
		echo "--> 5FingersPinchAction - Disabled"; else
		echo "--> 5FingersPinchAction - set to ${gct[$s5FingersPinchAction]}"; fi; fi
	if [[ $s5FingersPressAction != "DEFAULT" && $s5FingersPressAction != "YES" ]]; then
		ss5FingersPressAction="<integer>$s5FingersPressAction</integer>"
		if [[ $s5FingersPressAction == 'NO' ]]; then
		ss5FingersPressAction="<false/>"; fi
		perl -0777 -pe "s|<key>5FingersPressAction</key>\s*.*>|<key>5FingersPressAction</key>\n$ss5FingersPressAction|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		if [[ $s5FingersPressAction == 'NO' ]]; then
		echo "--> 5FingersPressAction - Disabled"; else
		echo "--> 5FingersPressAction - set to ${gct[$s5FingersPressAction]}"; fi; fi
	if [[ $s5FingersTapAction != "DEFAULT" && $s5FingersTapAction != "YES" ]]; then
		ss5FingersTapAction="<integer>$s5FingersTapAction</integer>"
		if [[ $s5FingersTapAction == 'NO' ]]; then
		ss5FingersTapAction="<false/>"; fi
		perl -0777 -pe "s|<key>5FingersTapAction</key>\s*.*>|<key>5FingersTapAction</key>\n$ss5FingersTapAction|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
		rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
		if [[ $s5FingersTapAction == 'NO' ]]; then
		echo "--> 5FingersTapAction - Disabled"; else
		echo "--> 5FingersTapAction - set to ${gct[$s5FingersTapAction]}"; fi; fi
	if [[ $AccidentalInputTimeOut != "DEFAULT" && $AccidentalInputTimeOut != "YES" ]]; then
		if [[ $AccidentalInputTimeOut == "NO" ]]; then
		AccidentalInputTimeOut=0; fi
		sAccidentalInputTimeOut=$(echo "$AccidentalInputTimeOut*1000/1" | bc)
		if [[ "$sAccidentalInputTimeOut" -ge 0 && "$sAccidentalInputTimeOut" -le 10000 ]]; then
			perl -0777 -pe "s|<key>AccidentalInputTimeOut</key>\s*.*>|<key>AccidentalInputTimeOut</key>\n<integer>$sAccidentalInputTimeOut</integer>|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
			rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
			if [[ $AccidentalInputTimeOut == 0 ]]; then
			echo "--> AccidentalInputTimeOut - Disabled"; else
			echo "--> AccidentalInputTimeOut - set to $AccidentalInputTimeOut Secounds"; fi; fi; fi
	if [[ $PointerResolution != "DEFAULT" && $PointerResolution != "YES" && $PointerResolution != "NO" ]]; then
		if [[ "$PointerResolution" -ge 100 && "$PointerResolution" -le 10000 ]]; then
			perl -0777 -pe "s|<key>PointerResolution</key>\s*.*>|<key>PointerResolution</key>\n<integer>$PointerResolution</integer>|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
			rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
			echo "--> PointerResolution - set to $PointerResolution DPI"; fi
			if [[ "$PointerResolution" -le 99 || "$PointerResolution" -ge 10001 ]]; then
			echo "--> PointerResolution - NOT POSSIBLE: $PointerResolution DPI"; fi; fi
	if [[ $SlingEffectHoldTimeOut != "DEFAULT" && $SlingEffectHoldTimeOut != "YES" ]]; then
		if [[ $SlingEffectHoldTimeOut == "NO" ]]; then
		SlingEffectHoldTimeOut=0; fi
		sSlingEffectHoldTimeOut=$(echo "$SlingEffectHoldTimeOut*1000/1" | bc)
		if [[ "$sSlingEffectHoldTimeOut" -ge 0 && "$sSlingEffectHoldTimeOut" -le 10000 ]]; then
			perl -0777 -pe "s|<key>SlingEffectHoldTimeOut</key>\s*.*>|<key>SlingEffectHoldTimeOut</key>\n<integer>$sSlingEffectHoldTimeOut</integer>|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
			rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
			if [[ $SlingEffectHoldTimeOut == 0 ]]; then
			echo "--> SlingEffectHoldTimeOut - Disabled"; else
			echo "--> SlingEffectHoldTimeOut - set to $SlingEffectHoldTimeOut Secounds"; fi; fi; fi
	if [[ $FingersPressTimeOut != "DEFAULT" && $FingersPressTimeOut != "YES" ]]; then
		if [[ $FingersPressTimeOut == "NO" ]]; then
		FingersPressTimeOut=0; fi
		sFingersPressTimeOut=$(echo "$FingersPressTimeOut*1000/1" | bc)
		if [[ "$sFingersPressTimeOut" -ge 0 && "$sFingersPressTimeOut" -le 10000 ]]; then
			perl -0777 -pe "s|<key>FingersPressTimeOut</key>\s*.*>|<key>FingersPressTimeOut</key>\n<integer>$sFingersPressTimeOut</integer>|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
			rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
			if [[ $FingersPressTimeOut == 0 ]]; then
			echo "--> FingersPressTimeOut - Disabled"; else
			echo "--> FingersPressTimeOut - set to $FingersPressTimeOut Secounds"; fi; fi; fi
    if [[ $ScrollStopTimeOut != "DEFAULT" && $ScrollStopTimeOut != "YES" ]]; then
		if [[ $ScrollStopTimeOut == "NO" ]]; then
		ScrollStopTimeOut=0; fi
		sScrollStopTimeOut=$(echo "$ScrollStopTimeOut*1000/1" | bc)
		if [[ "$sScrollStopTimeOut" -ge 0 && "$sScrollStopTimeOut" -le 10000 ]]; then
			perl -0777 -pe "s|<key>ScrollStopTimeOut</key>\s*.*>|<key>ScrollStopTimeOut</key>\n<integer>$sScrollStopTimeOut</integer>|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
			rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
			if [[ $ScrollStopTimeOut == 0 ]]; then
			echo "--> ScrollStopTimeOut - Disabled"; else
			echo "--> ScrollStopTimeOut - set to $ScrollStopTimeOut Secounds"; fi; fi; fi
	if [[ $AccelerationPrefValue != "DEFAULT" && $AccelerationPrefValue != "YES" && $AccelerationPrefValue != "NO" ]]; then
		if [[ "$AccelerationPrefValue" -ge 0 && "$AccelerationPrefValue" -le 4 ]]; then
			perl -0777 -pe "s|<key>AccelerationPrefValue</key>\s*.*>|<key>AccelerationPrefValue</key>\n<integer>$AccelerationPrefValue</integer>|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
			rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
			echo "--> AccelerationPrefValue - set to Mode: $AccelerationPrefValue"; fi; fi
        if [[ $PointerAccelerationMode != "DEFAULT" && $PointerAccelerationMode != "YES" && $PointerAccelerationMode != "NO" ]]; then
		if [[ "$PointerAccelerationMode" -ge 0 && "$PointerAccelerationMode" -le 4 ]]; then
			perl -0777 -pe "s|<key>PointerAccelerationMode</key>\s*.*>|<key>PointerAccelerationMode</key>\n<integer>$PointerAccelerationMode</integer>|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
			rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
			echo "--> PointerAccelerationMode - set to Mode: $PointerAccelerationMode"; fi; fi
        if [[ $PointerAccelMode4Value != "DEFAULT" && $PointerAccelMode4Value != "YES" && $PointerAccelMode4Value != "NO" ]]; then
		if [[ "$PointerAccelMode4Value" -ge 0 && "$PointerAccelMode4Value" -le 16 ]]; then
			perl -0777 -pe "s|<key>PointerAccelMode4Value</key>\s*.*>|<key>PointerAccelMode4Value</key>\n<integer>$PointerAccelMode4Value</integer>|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
			rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
			echo "--> PointerAccelMode4Value - set to: $PointerAccelMode4Value"; fi; fi
        if [[ $s2FScrollAccelMode != "DEFAULT" && $s2FScrollAccelMode != "YES" && $s2FScrollAccelMode != "NO" ]]; then
		if [[ "$s2FScrollAccelMode" -ge 0 && "$s2FScrollAccelMode" -le 3 ]]; then
			perl -0777 -pe "s|<key>2FScrollAccelMode</key>\s*.*>|<key>2FScrollAccelMode</key>\n<integer>$s2FScrollAccelMode</integer>|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
			rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
			echo "--> 2FScrollAccelMode - set to Mode: $s2FScrollAccelMode"; fi; fi
        if [[ $SlowScrollFilterValue != "DEFAULT" && $SlowScrollFilterValue != "YES" && $SlowScrollFilterValue != "NO" ]]; then
		if [[ "$SlowScrollFilterValue" -ge 0 && "$SlowScrollFilterValue" -le 100 ]]; then
			perl -0777 -pe "s|<key>SlowScrollFilterValue</key>\s*.*>|<key>SlowScrollFilterValue</key>\n<integer>$SlowScrollFilterValue</integer>|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
			rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
			echo "--> SlowScrollFilterValue - set to: $SlowScrollFilterValue"; fi; fi
	if [[ $ScrollResolution != "DEFAULT" && $ScrollResolution != "YES" && $ScrollResolution != "NO" ]]; then
		if [[ "$ScrollResolution" -ge 100 && "$ScrollResolution" -le 10000 ]]; then
			perl -0777 -pe "s|<key>ScrollResolution</key>\s*.*>|<key>ScrollResolution</key>\n<integer>$ScrollResolution</integer>|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
			rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
			echo "--> ScrollResolution - set to $ScrollResolution DPI"; fi
			if [[ "$ScrollResolution" -le 99 || "$ScrollResolution" -ge 10001 ]]; then
			echo "--> ScrollResolution - NOT POSSIBLE: $ScrollResolution DPI"; fi; fi
	if [[ $FLiftDragReleaseTimeOut != "DEFAULT" && $FLiftDragReleaseTimeOut != "YES" ]]; then
		if [[ $FLiftDragReleaseTimeOut == "NO" ]]; then
		FLiftDragReleaseTimeOut=0; fi
		sFLiftDragReleaseTimeOut=$(echo "$FLiftDragReleaseTimeOut*1000/1" | bc)
		if [[ "$sFLiftDragReleaseTimeOut" -ge 0 && "$sFLiftDragReleaseTimeOut" -le 10000 ]]; then
			perl -0777 -pe "s|<key>FLiftDragReleaseTimeOut</key>\s*.*>|<key>FLiftDragReleaseTimeOut</key>\n<integer>$sFLiftDragReleaseTimeOut</integer>|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
			rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
			if [[ $FLiftDragReleaseTimeOut == 0 ]]; then
			echo "--> FLiftDragReleaseTimeOut - Disabled"; else
			echo "--> FLiftDragReleaseTimeOut - set to $FLiftDragReleaseTimeOut Secounds"; fi; fi; fi
	if [[ $FingerPressDragPressure != "DEFAULT" && $FingerPressDragPressure != "YES" ]]; then
		if [[ $FingerPressDragPressure == "NO" ]]; then
		FingerPressDragPressure=0; fi
		if [[ "$FingerPressDragPressure" -ge 0 && "$FingerPressDragPressure" -le 100 ]]; then
			perl -0777 -pe "s|<key>FingerPressDragPressure</key>\s*.*>|<key>FingerPressDragPressure</key>\n<integer>$FingerPressDragPressure</integer>|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
			rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
			echo "--> FingerPressDragPressure - set Presslevel to $FingerPressDragPressure"; fi
			# Need to modify here!!! ------###########
			fi
	if [[ $FingerPressDragTimeOut != "DEFAULT" && $FingerPressDragTimeOut != "YES" ]]; then
		if [[ $FingerPressDragTimeOut == "NO" ]]; then
		FingerPressDragTimeOut=0; fi
		sFingerPressDragTimeOut=$(echo "$FingerPressDragTimeOut*1000/1" | bc)
		if [[ "$sFingerPressDragTimeOut" -ge 0 && "$sFingerPressDragTimeOut" -le 10000 ]]; then
			perl -0777 -pe "s|<key>FingerPressDragTimeOut</key>\s*.*>|<key>FingerPressDragTimeOut</key>\n<integer>$sFingerPressDragTimeOut</integer>|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
			rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
			if [[ $FingerPressDragTimeOut == 0 ]]; then
			echo "--> FingerPressDragTimeOut - Disabled"; else
			echo "--> FingerPressDragTimeOut - set to $FingerPressDragTimeOut Secounds"; fi; fi; fi
	if [[ $IdleAsusKBlightTimeOut != "DEFAULT" && $IdleAsusKBlightTimeOut != "YES" ]]; then
		if [[ $IdleAsusKBlightTimeOut == "NO" ]]; then
		IdleAsusKBlightTimeOut=0; fi
		sIdleAsusKBlightTimeOut=$(echo "$IdleAsusKBlightTimeOut*1000/1" | bc)
		if [[ "$sIdleAsusKBlightTimeOut" -ge 0 && "$sIdleAsusKBlightTimeOut" -le 36000000 ]]; then
			perl -0777 -pe "s|<key>IdleAsusKBlightTimeOut</key>\s*.*>|<key>IdleAsusKBlightTimeOut</key>\n<integer>$sIdleAsusKBlightTimeOut</integer>|" ~/$TOUCHPADPLIST > ~/$TOUCHPADPLIST2
			rm ~/$TOUCHPADPLIST; mv ~/$TOUCHPADPLIST2 ~/$TOUCHPADPLIST
			if [[ $IdleAsusKBlightTimeOut == 0 ]]; then
			echo "--> IdleAsusKBlightTimeOut - Disabled"; else
			echo "--> IdleAsusKBlightTimeOut - set to $IdleAsusKBlightTimeOut Secounds"; fi; fi; fi
	echo "## --> Touchpad Settings Customized! <-- ##"
fi # TOUCHPAD SETTINGS END #
if [[ $Enable_Keyboard_Settings == "YES" ]]; then     # KEYBOARD SETTINGS START #
	if [[ $Use_ISO_Layout == "YES" ]]; then
		perl -0777 -pe 's|<key>Use ISO Layout</key>\s*.*>|<key>Use ISO Layout</key>\n<true/>|' ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> Use ISO Layout - Enabled"; fi
	if [[ $Use_ISO_Layout == "NO" ]]; then
		perl -0777 -pe 's|<key>Use ISO Layout</key>\s*.*>|<key>Use ISO Layout</key>\n<false/>|' ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> Use ISO Layout - Disabled"; fi
	if [[ $Swap_alt_and_windows_key == "YES" ]]; then
		perl -0777 -pe 's|<key>Swap alt and windows key</key>\s*.*>|<key>Swap alt and windows key</key>\n<true/>|' ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> Swap alt and windows key - Enabled"; fi
	if [[ $Swap_alt_and_windows_key == "NO" ]]; then
		perl -0777 -pe 's|<key>Swap alt and windows key</key>\s*.*>|<key>Swap alt and windows key</key>\n<false/>|' ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> Swap alt and windows key - Disabled"; fi
	if [[ $Make_delete_key_into_cmd_and_backspace == "YES" ]]; then
		perl -0777 -pe 's|<key>Make delete key into cmd \+ backspace</key>\s*.*>|<key>Make delete key into cmd \+ backspace</key>\n<true/>|' ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> Make delete key into cmd + backspace - Enabled"; fi
	if [[ $Make_delete_key_into_cmd_and_backspace == "NO" ]]; then
		perl -0777 -pe 's|<key>Make delete key into cmd \+ backspace</key>\s*.*>|<key>Make delete key into cmd \+ backspace</key>\n<false/>|' ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> Make delete key into cmd + backspace - Disabled"; fi
	if [[ $Using_AsusBacklight == "YES" ]]; then
		perl -0777 -pe 's|<key>Using AsusBacklight</key>\s*.*>|<key>Using AsusBacklight</key>\n<true/>|' ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> Using AsusBacklight - Enabled"; fi
	if [[ $Using_AsusBacklight == "NO" ]]; then
		perl -0777 -pe 's|<key>Using AsusBacklight</key>\s*.*>|<key>Using AsusBacklight</key>\n<false/>|' ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> Using AsusBacklight - Disabled"; fi
	if [[ $Enable_Asus_KBacklight == "YES" ]]; then
		perl -0777 -pe 's|<key>Enable Asus KBacklight</key>\s*.*>|<key>Enable Asus KBacklight</key>\n<true/>|' ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> Enable Asus KBacklight - Enabled"; fi
	if [[ $Enable_Asus_KBacklight == "NO" ]]; then
		perl -0777 -pe 's|<key>Enable Asus KBacklight</key>\s*.*>|<key>Enable Asus KBacklight</key>\n<false/>|' ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> Enable Asus KBacklight - Disabled"; fi
        if [[ $Num_Lock_On == "YES" ]]; then
		perl -0777 -pe 's|<key>Num Lock On</key>\s*.*>|<key>Num Lock On</key>\n<true/>|' ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> Num Lock On - Enabled"; fi
	if [[ $Num_Lock_On == "NO" ]]; then
		perl -0777 -pe 's|<key>Num Lock On</key>\s*.*>|<key>Num Lock On</key>\n<false/>|' ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> Num Lock On - Disabled"; fi
        if [[ $Disable_NumLock_LED == "YES" ]]; then
		perl -0777 -pe 's|<key>Disable NumLock LED</key>\s*.*>|<key>Disable NumLock LED</key>\n<true/>|' ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> Disable NumLock LED - Enabled"; fi
	if [[ $Disable_NumLock_LED == "NO" ]]; then
		perl -0777 -pe 's|<key>Disable NumLock LED</key>\s*.*>|<key>Disable NumLock LED</key>\n<false/>|' ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> Disable NumLock LED - Disabled"; fi
	if [[ $Enable_Extended_Functions == "YES" ]]; then
		perl -0777 -pe 's|<key>Enable Extended Functions</key>\s*.*>|<key>Enable Extended Functions</key>\n<true/>|' ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> Enable Extended Functions - Enabled"; fi
	if [[ $Enable_Extended_Functions == "NO" ]]; then
		perl -0777 -pe 's|<key>Enable Extended Functions</key>\s*.*>|<key>Enable Extended Functions</key>\n<false/>|' ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> Enable Extended Functions - Disabled"; fi
	if [[ $KBacklight_has_16_Levels == "YES" ]]; then
		perl -0777 -pe 's|<key>KBacklight has 16 Levels</key>\s*.*>|<key>KBacklight has 16 Levels</key>\n<true/>|' ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> KBacklight has 16 Levels - Enabled"; fi
	if [[ $KBacklight_has_16_Levels == "NO" ]]; then
		perl -0777 -pe 's|<key>KBacklight has 16 Levels</key>\s*.*>|<key>KBacklight has 16 Levels</key>\n<false/>|' ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> KBacklight has 16 Levels - Disabled"; fi
	if [[ $Make_shift_and_caps_into_Fn_key == "YES" ]]; then
		perl -0777 -pe 's|<key>Make shift \+ caps into Fn key</key>\s*.*>|<key>Make shift \+ caps into Fn key</key>\n<true/>|' ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> Make shift + caps into Fn key - Enabled"; fi
	if [[ $Make_shift_and_caps_into_Fn_key == "NO" ]]; then
		perl -0777 -pe 's|<key>Make shift \+ caps into Fn key</key>\s*.*>|<key>Make shift \+ caps into Fn key</key>\n<false/>|' ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> Make shift + caps into Fn key - Disabled"; fi
	if [[ $Keyboard_type_ID != "DEFAULT" && $Keyboard_type_ID != "YES" ]]; then
		if [[ $Keyboard_type_ID == "NO" ]]; then
		Keyboard_type_ID=0; fi
		perl -0777 -pe "s|<key>Keyboard type \(ID\)</key>\s*.*>|<key>Keyboard type \(ID\)</key>\n<integer>$Keyboard_type_ID</integer>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $Keyboard_type_ID == 0 ]]; then
		echo "--> Keyboard Type ID - Default"; else
		echo "--> Keyboard Type ID - set ID to $Keyboard_type_ID"; fi; fi
	if [[ $Make_context_menu_key_into_key != "DEFAULT" && $Make_context_menu_key_into_key != "YES" ]]; then
		if [[ $Make_context_menu_key_into_key == "NO" ]]; then
		Make_context_menu_key_into_key=0; fi
		perl -0777 -pe "s|<key>Make context menu key into key</key>\s*.*>|<key>Make context menu key into key</key>\n<integer>$Make_context_menu_key_into_key</integer>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $Make_context_menu_key_into_key == 0 ]]; then
		echo "--> Make context menu key into key - NO"; else
		echo "--> Make context menu key into key - Set to KeyID $Make_context_menu_key_into_key"; fi; fi
	if [[ $Make_right_control_into_key != "DEFAULT" && $Make_right_control_into_key != "YES" ]]; then
		if [[ $Make_right_control_into_key == "NO" ]]; then
		Make_right_control_into_key=0; fi
		perl -0777 -pe "s|<key>Make right control into key</key>\s*.*>|<key>Make right control into key</key>\n<integer>$Make_right_control_into_key</integer>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $Make_right_control_into_key == 0 ]]; then
		echo "--> Make right control into key - NO"; else
		echo "--> Make right control into key - Set to KeyID $Make_right_control_into_key"; fi; fi
	if [[ $Fn_keys_Mode != "DEFAULT" && $Fn_keys_Mode != "YES" ]]; then
		if [ $Fn_keys_Mode == "NO" ] || [ $Fn_keys_Mode -eq 0 ]; then
		echo "!!!> You cant disable Fn keys Mode! Set Fn Key Mode to: 1"
		Fn_keys_Mode=1; fi
		perl -0777 -pe "s|<key>Fn keys Mode</key>\s*.*>|<key>Fn keys Mode</key>\n<integer>$Fn_keys_Mode</integer>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> Fn keys Mode - Set to Mode $Fn_keys_Mode"; fi
	if [ $Fn_keys_Layout == "ASUS" ] || [ $Fn_keys_Layout == "ACER" ] || [ $Fn_keys_Layout == "DELL" ] || [ $Fn_keys_Layout == "SAMSUNG" ] || [ $Fn_keys_Layout == "MSI" ] || [ $Fn_keys_Layout == "NONE" ]; then
		perl -0777 -pe "s|<key>Fn keys Layout</key>\s*.*>|<key>Fn keys Layout</key>\n<string>$Fn_keys_Layout</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		echo "--> Fn keys Layout - Set to $Fn_keys_Layout"; fi
	if [[ $m1_Misson_Control != "DEFAULT" && $m1_Misson_Control != "YES" ]]; then
		if [[ $m1_Misson_Control == "NO" ]]; then
			m1_Misson_Control=0; fi
		perl -0777 -pe "s|<key>Misson Control</key>\s*.*>|<key>Misson Control</key>\n<string>$m1_Misson_Control</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m1_Misson_Control == "0" ]]; then
			echo "--> FN Mode 1 - Mission Control - Disabled"; else
			echo "--> FN Mode 1 - Mission Control - Set to $m1_Misson_Control"; fi; fi
	if [[ $m1_Launchpad != "DEFAULT" && $m1_Launchpad != "YES" ]]; then
		if [[ $m1_Launchpad == "NO" ]]; then
			m1_Launchpad=0; fi
		perl -0777 -pe "s|<key>Launchpad</key>\s*.*>|<key>Launchpad</key>\n<string>$m1_Launchpad</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m1_Launchpad == "0" ]]; then
			echo "--> FN Mode 1 - Launchpad - Disabled"; else
			echo "--> FN Mode 1 - Launchpad - Set to $m1_Launchpad"; fi; fi
	if [[ $m1_KBBacklightDown != "DEFAULT" && $m1_KBBacklightDown != "YES" ]]; then
		if [[ $m1_KBBacklightDown == "NO" ]]; then
			m1_KBBacklightDown=0; fi
		perl -0777 -pe "s|<key>KBBacklightDown</key>\s*.*>|<key>KBBacklightDown</key>\n<string>$m1_KBBacklightDown</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m1_KBBacklightDown == "0" ]]; then
			echo "--> FN Mode 1 - KBBacklightDown - Disabled"; else
			echo "--> FN Mode 1 - KBBacklightDown - Set to $m1_KBBacklightDown"; fi; fi
	if [[ $m1_KBBacklightUp != "DEFAULT" && $m1_KBBacklightUp != "YES" ]]; then
		if [[ $m1_KBBacklightUp == "NO" ]]; then
			m1_KBBacklightUp=0; fi
		perl -0777 -pe "s|<key>KBBacklightUp</key>\s*.*>|<key>KBBacklightUp</key>\n<string>$m1_KBBacklightUp</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m1_KBBacklightUp == "0" ]]; then
			echo "--> FN Mode 1 - KBBacklightUp - Disabled"; else
			echo "--> FN Mode 1 - KBBacklightUp - Set to $m1_KBBacklightUp"; fi; fi
	if [[ $m1_BrightnessDown != "DEFAULT" && $m1_BrightnessDown != "YES" ]]; then
		if [[ $m1_BrightnessDown == "NO" ]]; then
			m1_BrightnessDown=0; fi
		perl -0777 -pe "s|<key>BrightnessDown</key>\s*.*>|<key>BrightnessDown</key>\n<string>$m1_BrightnessDown</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m1_BrightnessDown == "0" ]]; then
			echo "--> FN Mode 1 - BrightnessDown - Disabled"; else
			echo "--> FN Mode 1 - BrightnessDown - Set to $m1_BrightnessDown"; fi; fi
	if [[ $m1_BrightnessUp != "DEFAULT" && $m1_BrightnessUp != "YES" ]]; then
		if [[ $m1_BrightnessUp == "NO" ]]; then
			m1_BrightnessUp=0; fi
		perl -0777 -pe "s|<key>BrightnessUp</key>\s*.*>|<key>BrightnessUp</key>\n<string>$m1_BrightnessUp</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m1_BrightnessUp == "0" ]]; then
			echo "--> FN Mode 1 - BrightnessUp - Disabled"; else
			echo "--> FN Mode 1 - BrightnessUp - Set to $m1_BrightnessUp"; fi; fi
	if [[ $m1_MediaPrevious != "DEFAULT" && $m1_MediaPrevious != "YES" ]]; then
		if [[ $m1_MediaPrevious == "NO" ]]; then
			m1_MediaPrevious=0; fi
		perl -0777 -pe "s|<key>MediaPrevious</key>\s*.*>|<key>MediaPrevious</key>\n<string>$m1_MediaPrevious</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m1_MediaPrevious == "0" ]]; then
			echo "--> FN Mode 1 - MediaPrevious - Disabled"; else
			echo "--> FN Mode 1 - MediaPrevious - Set to $m1_MediaPrevious"; fi; fi
	if [[ $m1_MediaPlayPause != "DEFAULT" && $m1_MediaPlayPause != "YES" ]]; then
		if [[ $m1_MediaPlayPause == "NO" ]]; then
			m1_MediaPlayPause=0; fi
		perl -0777 -pe "s|<key>MediaPlayPause</key>\s*.*>|<key>MediaPlayPause</key>\n<string>$m1_MediaPlayPause</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m1_MediaPlayPause == "0" ]]; then
			echo "--> FN Mode 1 - MediaPlayPause - Disabled"; else
			echo "--> FN Mode 1 - MediaPlayPause - Set to $m1_MediaPlayPause"; fi; fi
	if [[ $m1_MediaNext != "DEFAULT" && $m1_MediaNext != "YES" ]]; then
		if [[ $m1_MediaNext == "NO" ]]; then
			m1_MediaNext=0; fi
		perl -0777 -pe "s|<key>MediaNext</key>\s*.*>|<key>MediaNext</key>\n<string>$m1_MediaNext</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m1_MediaNext == "0" ]]; then
			echo "--> FN Mode 1 - MediaNext - Disabled"; else
			echo "--> FN Mode 1 - MediaNext - Set to $m1_MediaNext"; fi; fi
	if [[ $m1_VolumeMute != "DEFAULT" && $m1_VolumeMute != "YES" ]]; then
		if [[ $m1_VolumeMute == "NO" ]]; then
			m1_VolumeMute=0; fi
		perl -0777 -pe "s|<key>VolumeMute</key>\s*.*>|<key>VolumeMute</key>\n<string>$m1_VolumeMute</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m1_VolumeMute == "0" ]]; then
			echo "--> FN Mode 1 - VolumeMute - Disabled"; else
			echo "--> FN Mode 1 - VolumeMute - Set to $m1_VolumeMute"; fi; fi
	if [[ $m1_VolumeDown != "DEFAULT" && $m1_VolumeDown != "YES" ]]; then
		if [[ $m1_VolumeDown == "NO" ]]; then
			m1_VolumeDown=0; fi
		perl -0777 -pe "s|<key>VolumeDown</key>\s*.*>|<key>VolumeDown</key>\n<string>$m1_VolumeDown</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m1_VolumeDown == "0" ]]; then
			echo "--> FN Mode 1 - VolumeDown - Disabled"; else
			echo "--> FN Mode 1 - VolumeDown - Set to $m1_VolumeDown"; fi; fi
	if [[ $m1_VolumeUp != "DEFAULT" && $m1_VolumeUp != "YES" ]]; then
		if [[ $m1_VolumeUp == "NO" ]]; then
			m1_VolumeUp=0; fi
		perl -0777 -pe "s|<key>VolumeUp</key>\s*.*>|<key>VolumeUp</key>\n<string>$m1_VolumeUp</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m1_VolumeUp == "0" ]]; then
			echo "--> FN Mode 1 - VolumeUp - Disabled"; else
			echo "--> FN Mode 1 - VolumeUp - Set to $m1_VolumeUp"; fi; fi
	if [[ $m1_SleepDisplay != "DEFAULT" && $m1_SleepDisplay != "YES" ]]; then
		if [[ $m1_SleepDisplay == "NO" ]]; then
			m1_SleepDisplay=0; fi
		perl -0777 -pe "s|<key>SleepDisplay</key>\s*.*>|<key>SleepDisplay</key>\n<string>$m1_SleepDisplay</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m1_SleepDisplay == "0" ]]; then
			echo "--> FN Mode 1 - SleepDisplay - Disabled"; else
			echo "--> FN Mode 1 - SleepDisplay - Set to $m1_SleepDisplay"; fi; fi
	if [[ $m1_VideoMirror != "DEFAULT" && $m1_VideoMirror != "YES" ]]; then
		if [[ $m1_VideoMirror == "NO" ]]; then
			m1_VideoMirror=0; fi
		perl -0777 -pe "s|<key>VideoMirror</key>\s*.*>|<key>VideoMirror</key>\n<string>$m1_VideoMirror</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m1_VideoMirror == "0" ]]; then
			echo "--> FN Mode 1 - VideoMirror - Disabled"; else
			echo "--> FN Mode 1 - VideoMirror - Set to $m1_VideoMirror"; fi; fi
	if [[ $m1_Touchpad != "DEFAULT" && $m1_Touchpad != "YES" ]]; then
		if [[ $m1_Touchpad == "NO" ]]; then
			m1_Touchpad=0; fi
		perl -0777 -pe "s|<key>Touchpad</key>\s*.*>|<key>Touchpad</key>\n<string>$m1_Touchpad</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m1_Touchpad == "0" ]]; then
			echo "--> FN Mode 1 - Touchpad - Disabled"; else
			echo "--> FN Mode 1 - Touchpad - Set to $m1_Touchpad"; fi; fi
	if [[ $m2_SystemSleep != "DEFAULT" && $m2_SystemSleep != "YES" ]]; then
		if [[ $m2_SystemSleep == "NO" ]]; then
			m2_SystemSleep=0; fi
		perl -0777 -pe "s|<key>SystemSleep</key>\s*.*>|<key>SystemSleep</key>\n<string>$m2_SystemSleep</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m2_SystemSleep == "0" ]]; then
			echo "--> FN Mode 2 - SystemSleep - Disabled"; else
			echo "--> FN Mode 2 - SystemSleep - Set to $m2_SystemSleep"; fi; fi
	if [[ $m2_Misson_Control != "DEFAULT" && $m2_Misson_Control != "YES" ]]; then
		if [[ $m2_Misson_Control == "NO" ]]; then
			m2_Misson_Control=0; fi
		perl -0777 -pe "s|<key>Misson Control</key>\s*.*>|<key>Misson Control</key>\n<string>$m2_Misson_Control</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m2_Misson_Control == "0" ]]; then
			echo "--> FN Mode 2 - Mission Control - Disabled"; else
			echo "--> FN Mode 2 - Mission Control - Set to $m2_Misson_Control"; fi; fi
	if [[ $m2_Launchpad != "DEFAULT" && $m2_Launchpad != "YES" ]]; then
		if [[ $m2_Launchpad == "NO" ]]; then
			m2_Launchpad=0; fi
		perl -0777 -pe "s|<key>Launchpad</key>\s*.*>|<key>Launchpad</key>\n<string>$m2_Launchpad</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m2_Launchpad == "0" ]]; then
			echo "--> FN Mode 2 - Launchpad - Disabled"; else
			echo "--> FN Mode 2 - Launchpad - Set to $m2_Launchpad"; fi; fi
	if [[ $m2_KBBacklightDown != "DEFAULT" && $m2_KBBacklightDown != "YES" ]]; then
		if [[ $m2_KBBacklightDown == "NO" ]]; then
			m2_KBBacklightDown=0; fi
		perl -0777 -pe "s|<key>KBBacklightDown</key>\s*.*>|<key>KBBacklightDown</key>\n<string>$m2_KBBacklightDown</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m2_KBBacklightDown == "0" ]]; then
			echo "--> FN Mode 2 - KBBacklightDown - Disabled"; else
			echo "--> FN Mode 2 - KBBacklightDown - Set to $m2_KBBacklightDown"; fi; fi
	if [[ $m2_KBBacklightUp != "DEFAULT" && $m2_KBBacklightUp != "YES" ]]; then
		if [[ $m2_KBBacklightUp == "NO" ]]; then
			m2_KBBacklightUp=0; fi
		perl -0777 -pe "s|<key>KBBacklightUp</key>\s*.*>|<key>KBBacklightUp</key>\n<string>$m2_KBBacklightUp</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m2_KBBacklightUp == "0" ]]; then
			echo "--> FN Mode 2 - KBBacklightUp - Disabled"; else
			echo "--> FN Mode 2 - KBBacklightUp - Set to $m2_KBBacklightUp"; fi; fi
	if [[ $m2_BrightnessDown != "DEFAULT" && $m2_BrightnessDown != "YES" ]]; then
		if [[ $m2_BrightnessDown == "NO" ]]; then
			m2_BrightnessDown=0; fi
		perl -0777 -pe "s|<key>BrightnessDown</key>\s*.*>|<key>BrightnessDown</key>\n<string>$m2_BrightnessDown</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m2_BrightnessDown == "0" ]]; then
			echo "--> FN Mode 2 - BrightnessDown - Disabled"; else
			echo "--> FN Mode 2 - BrightnessDown - Set to $m2_BrightnessDown"; fi; fi
	if [[ $m2_BrightnessUp != "DEFAULT" && $m2_BrightnessUp != "YES" ]]; then
		if [[ $m2_BrightnessUp == "NO" ]]; then
			m2_BrightnessUp=0; fi
		perl -0777 -pe "s|<key>BrightnessUp</key>\s*.*>|<key>BrightnessUp</key>\n<string>$m2_BrightnessUp</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m2_BrightnessUp == "0" ]]; then
			echo "--> FN Mode 2 - BrightnessUp - Disabled"; else
			echo "--> FN Mode 2 - BrightnessUp - Set to $m2_BrightnessUp"; fi; fi
	if [[ $m2_MediaPrevious != "DEFAULT" && $m2_MediaPrevious != "YES" ]]; then
		if [[ $m2_MediaPrevious == "NO" ]]; then
			m2_MediaPrevious=0; fi
		perl -0777 -pe "s|<key>MediaPrevious</key>\s*.*>|<key>MediaPrevious</key>\n<string>$m2_MediaPrevious</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m2_MediaPrevious == "0" ]]; then
			echo "--> FN Mode 2 - MediaPrevious - Disabled"; else
			echo "--> FN Mode 2 - MediaPrevious - Set to $m2_MediaPrevious"; fi; fi
	if [[ $m2_MediaPlayPause != "DEFAULT" && $m2_MediaPlayPause != "YES" ]]; then
		if [[ $m2_MediaPlayPause == "NO" ]]; then
			m2_MediaPlayPause=0; fi
		perl -0777 -pe "s|<key>MediaPlayPause</key>\s*.*>|<key>MediaPlayPause</key>\n<string>$m2_MediaPlayPause</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m2_MediaPlayPause == "0" ]]; then
			echo "--> FN Mode 2 - MediaPlayPause - Disabled"; else
			echo "--> FN Mode 2 - MediaPlayPause - Set to $m2_MediaPlayPause"; fi; fi
	if [[ $m2_MediaNext != "DEFAULT" && $m2_MediaNext != "YES" ]]; then
		if [[ $m2_MediaNext == "NO" ]]; then
			m2_MediaNext=0; fi
		perl -0777 -pe "s|<key>MediaNext</key>\s*.*>|<key>MediaNext</key>\n<string>$m2_MediaNext</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m2_MediaNext == "0" ]]; then
			echo "--> FN Mode 2 - MediaNext - Disabled"; else
			echo "--> FN Mode 2 - MediaNext - Set to $m2_MediaNext"; fi; fi
	if [[ $m2_VolumeMute != "DEFAULT" && $m2_VolumeMute != "YES" ]]; then
		if [[ $m2_VolumeMute == "NO" ]]; then
			m2_VolumeMute=0; fi
		perl -0777 -pe "s|<key>VolumeMute</key>\s*.*>|<key>VolumeMute</key>\n<string>$m2_VolumeMute</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m2_VolumeMute == "0" ]]; then
			echo "--> FN Mode 2 - VolumeMute - Disabled"; else
			echo "--> FN Mode 2 - VolumeMute - Set to $m2_VolumeMute"; fi; fi
	if [[ $m2_VolumeDown != "DEFAULT" && $m2_VolumeDown != "YES" ]]; then
		if [[ $m2_VolumeDown == "NO" ]]; then
			m2_VolumeDown=0; fi
		perl -0777 -pe "s|<key>VolumeDown</key>\s*.*>|<key>VolumeDown</key>\n<string>$m2_VolumeDown</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m2_VolumeDown == "0" ]]; then
			echo "--> FN Mode 2 - VolumeDown - Disabled"; else
			echo "--> FN Mode 2 - VolumeDown - Set to $m2_VolumeDown"; fi; fi
	if [[ $m2_VolumeUp != "DEFAULT" && $m2_VolumeUp != "YES" ]]; then
		if [[ $m2_VolumeUp == "NO" ]]; then
			m2_VolumeUp=0; fi
		perl -0777 -pe "s|<key>VolumeUp</key>\s*.*>|<key>VolumeUp</key>\n<string>$m2_VolumeUp</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m2_VolumeUp == "0" ]]; then
			echo "--> FN Mode 2 - VolumeUp - Disabled"; else
			echo "--> FN Mode 2 - VolumeUp - Set to $m2_VolumeUp"; fi; fi
	if [[ $m2_SleepDisplay != "DEFAULT" && $m2_SleepDisplay != "YES" ]]; then
		if [[ $m2_SleepDisplay == "NO" ]]; then
			m2_SleepDisplay=0; fi
		perl -0777 -pe "s|<key>SleepDisplay</key>\s*.*>|<key>SleepDisplay</key>\n<string>$m2_SleepDisplay</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m2_SleepDisplay == "0" ]]; then
			echo "--> FN Mode 2 - SleepDisplay - Disabled"; else
			echo "--> FN Mode 2 - SleepDisplay - Set to $m2_SleepDisplay"; fi; fi
	if [[ $m2_VideoMirror != "DEFAULT" && $m2_VideoMirror != "YES" ]]; then
		if [[ $m2_VideoMirror == "NO" ]]; then
			m2_VideoMirror=0; fi
		perl -0777 -pe "s|<key>VideoMirror</key>\s*.*>|<key>VideoMirror</key>\n<string>$m2_VideoMirror</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m2_VideoMirror == "0" ]]; then
			echo "--> FN Mode 2 - VideoMirror - Disabled"; else
			echo "--> FN Mode 2 - VideoMirror - Set to $m2_VideoMirror"; fi; fi
	if [[ $m2_Touchpad != "DEFAULT" && $m2_Touchpad != "YES" ]]; then
		if [[ $m2_Touchpad == "NO" ]]; then
			m2_Touchpad=0; fi
		perl -0777 -pe "s|<key>Touchpad</key>\s*.*>|<key>Touchpad</key>\n<string>$m2_Touchpad</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $m2_Touchpad == "0" ]]; then
			echo "--> FN Mode 2 - Touchpad - Disabled"; else
			echo "--> FN Mode 2 - Touchpad - Set to $m2_Touchpad"; fi; fi
	if [[ $F13 != "DEFAULT" && $F13 != "YES" ]]; then
		if [ $F13 == "NO" ] || [ $F13 == "0" ]; then
			F13=""; fi
		perl -0777 -pe "s|<key>F13</key>\s*.*>|<key>F13</key>\n<string>$F13</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $F13 == "" ]]; then
			echo "--> Extended Functions - F13 - Disabled"; else
			echo "--> Extended Functions - F13 - Set to $F13"; fi; fi
	if [[ $F14 != "DEFAULT" && $F14 != "YES" ]]; then
		if [ $F14 == "NO" ] || [ $F14 == "0" ]; then
			F14=""; fi
		perl -0777 -pe "s|<key>F14</key>\s*.*>|<key>F14</key>\n<string>$F14</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $F14 == "" ]]; then
			echo "--> Extended Functions - F14 - Disabled"; else
			echo "--> Extended Functions - F14 - Set to $F14"; fi; fi
	if [[ $F15 != "DEFAULT" && $F15 != "YES" ]]; then
		if [ $F15 == "NO" ] || [ $F15 == "0" ]; then
			F15=""; fi
		perl -0777 -pe "s|<key>F15</key>\s*.*>|<key>F15</key>\n<string>$F15</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $F15 == "" ]]; then
			echo "--> Extended Functions - F15 - Disabled"; else
			echo "--> Extended Functions - F15 - Set to $F13"; fi; fi
	if [[ $F16 != "DEFAULT" && $F16 != "YES" ]]; then
		if [ $F16 == "NO" ] || [ $F16 == "0" ]; then
			F16=""; fi
		perl -0777 -pe "s|<key>F16</key>\s*.*>|<key>F16</key>\n<string>$F16</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $F16 == "" ]]; then
			echo "--> Extended Functions - F16 - Disabled"; else
			echo "--> Extended Functions - F16 - Set to $F16"; fi; fi
	if [[ $F17 != "DEFAULT" && $F17 != "YES" ]]; then
		if [ $F17 == "NO" ] || [ $F17 == "0" ]; then
			F17=""; fi
		perl -0777 -pe "s|<key>F17</key>\s*.*>|<key>F17</key>\n<string>$F17</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $F17 == "" ]]; then
			echo "--> Extended Functions - F17 - Disabled"; else
			echo "--> Extended Functions - F17 - Set to $F17"; fi; fi
	if [[ $F18 != "DEFAULT" && $F18 != "YES" ]]; then
		if [ $F18 == "NO" ] || [ $F18 == "0" ]; then
			F18=""; fi
		perl -0777 -pe "s|<key>F18</key>\s*.*>|<key>F18</key>\n<string>$F18</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $F18 == "" ]]; then
			echo "--> Extended Functions - F18 - Disabled"; else
			echo "--> Extended Functions - F18 - Set to $F18"; fi; fi
	if [[ $F19 != "DEFAULT" && $F19 != "YES" ]]; then
		if [ $F19 == "NO" ] || [ $F19 == "0" ]; then
			F19=""; fi
		perl -0777 -pe "s|<key>F19</key>\s*.*>|<key>F19</key>\n<string>$F19</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $F19 == "" ]]; then
			echo "--> Extended Functions - F19 - Disabled"; else
			echo "--> Extended Functions - F19 - Set to $F19"; fi; fi
	if [[ $F20 != "DEFAULT" && $F20 != "YES" ]]; then
		if [ $F20 == "NO" ] || [ $F20 == "0" ]; then
			F20=""; fi
		perl -0777 -pe "s|<key>F20</key>\s*.*>|<key>F20</key>\n<string>$F20</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $F20 == "" ]]; then
			echo "--> Extended Functions - F20 - Disabled"; else
			echo "--> Extended Functions - F20 - Set to $F20"; fi; fi
	if [[ $F21 != "DEFAULT" && $F21 != "YES" ]]; then
		if [ $F21 == "NO" ] || [ $F21 == "0" ]; then
			F21=""; fi
		perl -0777 -pe "s|<key>F21</key>\s*.*>|<key>F21</key>\n<string>$F21</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $F21 == "" ]]; then
			echo "--> Extended Functions - F21 - Disabled"; else
			echo "--> Extended Functions - F21 - Set to $F21"; fi; fi
	if [[ $F22 != "DEFAULT" && $F22 != "YES" ]]; then
		if [ $F22 == "NO" ] || [ $F22 == "0" ]; then
			F22=""; fi
		perl -0777 -pe "s|<key>F22</key>\s*.*>|<key>F22</key>\n<string>$F22</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $F22 == "" ]]; then
			echo "--> Extended Functions - F22 - Disabled"; else
			echo "--> Extended Functions - F22 - Set to $F22"; fi; fi
	if [[ $F23 != "DEFAULT" && $F23 != "YES" ]]; then
		if [ $F23 == "NO" ] || [ $F23 == "0" ]; then
			F23=""; fi
		perl -0777 -pe "s|<key>F23</key>\s*.*>|<key>F23</key>\n<string>$F23</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $F23 == "" ]]; then
			echo "--> Extended Functions - F23 - Disabled"; else
			echo "--> Extended Functions - F23 - Set to $F23"; fi; fi
	if [[ $F24 != "DEFAULT" && $F24 != "YES" ]]; then
		if [ $F24 == "NO" ] || [ $F24 == "0" ]; then
			F24=""; fi
		perl -0777 -pe "s|<key>F24</key>\s*.*>|<key>F24</key>\n<string>$F24</string>|" ~/$KEYBOARDPLIST > ~/$KEYBOARDPLIST2
		rm ~/$KEYBOARDPLIST; mv ~/$KEYBOARDPLIST2 ~/$KEYBOARDPLIST
		if [[ $F24 == "" ]]; then
			echo "--> Extended Functions - F24 - Disabled"; else
			echo "--> Extended Functions - F24 - Set to $F24"; fi; fi
	echo "## --> Keyboard Settings Customized! <-- ##"
fi # KEYBOARD SETTINGS END #
fi # CUSTOM SETTINGS END #

if [[ $Enable_AsusNBFnKeys_Customization == "YES" ]]; then
if [ ! -d "$Destination_of_AsusNBFnKeys" ]; then
echo " --- --- ERROR --- ---  --- --- ERROR --- --- "
echo "FILE: ~/$Destination_of_AsusNBFnKeys --- Doesnt exist!!!"
echo " --- --- ERROR --- ---  --- --- ERROR --- --- "; else
ASUSNBFNLIST="$Destination_of_AsusNBFnKeys/Contents/Info.plist"
ASUSNBFNLIST2="$Destination_of_AsusNBFnKeys/Contents/Info2.plist"
echo "### ---> Begin Customization of AsusNBFnKeys Driver <--- ###"
	if [[ $HasSensorALS == "YES" ]]; then
		perl -0777 -pe 's|<key>HasSensorALS</key>\s*.*>|<key>HasSensorALS</key>\n<true/>|' ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		echo "--> HasSensorALS - Enabled"; fi
	if [[ $HasSensorALS == "NO" ]]; then
		perl -0777 -pe 's|<key>HasSensorALS</key>\s*.*>|<key>HasSensorALS</key>\n<false/>|' ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		echo "--> HasSensorALS - Disabled"; fi
	if [[ $ALSEnabledAtBoot == "YES" ]]; then
		perl -0777 -pe 's|<key>ALSEnabledAtBoot</key>\s*.*>|<key>ALSEnabledAtBoot</key>\n<true/>|' ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		echo "--> ALSEnabledAtBoot - Enabled"; fi
	if [[ $ALSEnabledAtBoot == "NO" ]]; then
		perl -0777 -pe 's|<key>ALSEnabledAtBoot</key>\s*.*>|<key>ALSEnabledAtBoot</key>\n<false/>|' ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		echo "--> ALSEnabledAtBoot - Disabled"; fi
	if [[ $DimBacklightOnACDC == "YES" ]]; then
		perl -0777 -pe 's|<key>DimBacklightOnAC/DC</key>\s*.*>|<key>DimBacklightOnAC/DC</key>\n<true/>|' ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		echo "--> DimBacklightOnAC/DC - Enabled"; fi
	if [[ $DimBacklightOnACDC == "NO" ]]; then
		perl -0777 -pe 's|<key>DimBacklightOnAC/DC</key>\s*.*>|<key>DimBacklightOnAC/DC</key>\n<false/>|' ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		echo "--> DimBacklightOnAC/DC - Disabled"; fi
	if [[ $SoftDisplayBacklightOff == "YES" ]]; then
		perl -0777 -pe 's|<key>SoftDisplayBacklightOff</key>\s*.*>|<key>SoftDisplayBacklightOff</key>\n<true/>|' ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		echo "--> SoftDisplayBacklightOff - Enabled"; fi
	if [[ $SoftDisplayBacklightOff == "NO" ]]; then
		perl -0777 -pe 's|<key>SoftDisplayBacklightOff</key>\s*.*>|<key>SoftDisplayBacklightOff</key>\n<false/>|' ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		echo "--> SoftDisplayBacklightOff - Disabled"; fi
	if [[ $HasKeyboardBacklight == "YES" ]]; then
		perl -0777 -pe 's|<key>HasKeyboardBacklight</key>\s*.*>|<key>HasKeyboardBacklight</key>\n<true/>|' ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		echo "--> HasKeyboardBacklight - Enabled"; fi
	if [[ $HasKeyboardBacklight == "NO" ]]; then
		perl -0777 -pe 's|<key>HasKeyboardBacklight</key>\s*.*>|<key>HasKeyboardBacklight</key>\n<false/>|' ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		echo "--> HasKeyboardBacklight - Disabled"; fi
	if [[ $KeyboardHas16BLightLvls == "YES" ]]; then
		perl -0777 -pe 's|<key>KeyboardHas16BLightLvls</key>\s*.*>|<key>KeyboardHas16BLightLvls</key>\n<true/>|' ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		echo "--> KeyboardHas16BLightLvls - Enabled"; fi
	if [[ $KeyboardHas16BLightLvls == "NO" ]]; then
		perl -0777 -pe 's|<key>KeyboardHas16BLightLvls</key>\s*.*>|<key>KeyboardHas16BLightLvls</key>\n<false/>|' ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		echo "--> KeyboardHas16BLightLvls - Disabled"; fi
	if [[ $HasMediaFnKeys == "YES" ]]; then
		perl -0777 -pe 's|<key>HasMediaFnKeys</key>\s*.*>|<key>HasMediaFnKeys</key>\n<true/>|' ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		echo "--> HasMediaFnKeys - Enabled"; fi
	if [[ $HasMediaFnKeys == "NO" ]]; then
		perl -0777 -pe 's|<key>HasMediaFnKeys</key>\s*.*>|<key>HasMediaFnKeys</key>\n<false/>|' ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		echo "--> HasMediaFnKeys - Disabled"; fi
	if [[ $DisplayUsesNvidiaGPU == "YES" ]]; then
		perl -0777 -pe 's|<key>DisplayUsesNvidiaGPU</key>\s*.*>|<key>DisplayUsesNvidiaGPU</key>\n<true/>|' ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		echo "--> DisplayUsesNvidiaGPU - Enabled"; fi
	if [[ $DisplayUsesNvidiaGPU == "NO" ]]; then
		perl -0777 -pe 's|<key>DisplayUsesNvidiaGPU</key>\s*.*>|<key>DisplayUsesNvidiaGPU</key>\n<false/>|' ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		echo "--> DisplayUsesNvidiaGPU - Disabled"; fi
	if [[ $IdleKBacklightAutoOff == "YES" ]]; then
		perl -0777 -pe 's|<key>IdleKBacklightAutoOff</key>\s*.*>|<key>IdleKBacklightAutoOff</key>\n<true/>|' ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		echo "--> IdleKBacklightAutoOff - Enabled"; fi
	if [[ $IdleKBacklightAutoOff == "NO" ]]; then
		perl -0777 -pe 's|<key>IdleKBacklightAutoOff</key>\s*.*>|<key>IdleKBacklightAutoOff</key>\n<false/>|' ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		echo "--> IdleKBacklightAutoOff - Disabled"; fi
	if [[ $MediaKeysDoFastRewind == "YES" ]]; then
		perl -0777 -pe 's|<key>MediaKeysDoFastRewind</key>\s*.*>|<key>MediaKeysDoFastRewind</key>\n<true/>|' ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		echo "--> MediaKeysDoFastRewind - Enabled"; fi
	if [[ $MediaKeysDoFastRewind == "NO" ]]; then
		perl -0777 -pe 's|<key>MediaKeysDoFastRewind</key>\s*.*>|<key>MediaKeysDoFastRewind</key>\n<false/>|' ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		echo "--> MediaKeysDoFastRewind - Disabled"; fi
	if [[ $F3KeyFunction != "DEFAULT" && $F3KeyFunction != "YES" ]]; then
		if [[ $F3KeyFunction == "NO" ]]; then
		F3KeyFunction=0; fi
		perl -0777 -pe "s|<key>F3KeyFunction</key>\s*.*>|<key>F3KeyFunction</key>\n<integer>$F3KeyFunction</integer>|" ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		if [[ $F3KeyFunction == 0 ]]; then
		echo "--> F3KeyFunction - Default"; else
		echo "--> F3KeyFunction - set to $F3KeyFunction"; fi; fi
	if [[ $F4KeyFunction != "DEFAULT" && $F4KeyFunction != "YES" ]]; then
		if [[ $F4KeyFunction == "NO" ]]; then
		F4KeyFunction=0; fi
		perl -0777 -pe "s|<key>F4KeyFunction</key>\s*.*>|<key>F4KeyFunction</key>\n<integer>$F4KeyFunction</integer>|" ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		if [[ $F4KeyFunction == 0 ]]; then
		echo "--> F4KeyFunction - Default"; else
		echo "--> F4KeyFunction - set to $F3KeyFunction"; fi; fi
	if [[ $KBackLightlvlAtBoot != "DEFAULT" && $KBackLightlvlAtBoot != "YES" ]]; then
		if [[ $KBackLightlvlAtBoot == "NO" ]]; then
		KBackLightlvlAtBoot=0; fi
		perl -0777 -pe "s|<key>KBackLightlvlAtBoot</key>\s*.*>|<key>KBackLightlvlAtBoot</key>\n<integer>$KBackLightlvlAtBoot</integer>|" ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
		rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
		if [[ $KBackLightlvlAtBoot == 0 ]]; then
		echo "--> KBackLightlvlAtBoot - OFF"; else
		echo "--> KBackLightlvlAtBoot - set to Level $KBackLightlvlAtBoot"; fi; fi
	if [[ $IdleKBacklightAutoOffTimeout != "DEFAULT" && $IdleKBacklightAutoOffTimeout != "YES" ]]; then
		if [[ $IdleKBacklightAutoOffTimeout == "NO" ]]; then
		IdleKBacklightAutoOffTimeout=0; fi
		sIdleKBacklightAutoOffTimeout=$(echo "$IdleKBacklightAutoOffTimeout*1000/1" | bc)
		if [[ "$sIdleKBacklightAutoOffTimeout" -ge 0 && "$sIdleKBacklightAutoOffTimeout" -le 36000000 ]]; then
			perl -0777 -pe "s|<key>IdleKBacklightAutoOffTimeout</key>\s*.*>|<key>IdleKBacklightAutoOffTimeout</key>\n<integer>$sIdleKBacklightAutoOffTimeout</integer>|" ~/$ASUSNBFNLIST > ~/$ASUSNBFNLIST2
			rm ~/$ASUSNBFNLIST; mv ~/$ASUSNBFNLIST2 ~/$ASUSNBFNLIST
			if [[ $IdleKBacklightAutoOffTimeout == 0 ]]; then
			echo "--> IdleKBacklightAutoOffTimeout - Disabled"; else
			echo "--> IdleKBacklightAutoOffTimeout - set to $IdleKBacklightAutoOffTimeout Secounds"; fi; fi; fi
fi
fi


if [[ $Copy_to_CHAMELEON_kext_dir == "YES" ]]; then
	if [ ! -d "$CHAMELEON_kext_dir" ]; then
	echo "! Chameleon directory doesnt exists !"; else
	if [ -d "$Destination_of_ApplePS2Elan" ]; then
	sudo rm -rf $CHAMELEON_kext_dir/ApplePS2ElanTouchpad.kext
	sudo cp -rf ~/$Destination_of_ApplePS2Elan $CHAMELEON_kext_dir/ApplePS2ElanTouchpad.kext
	echo "### ---> ApplePS2Elan Copied to Chameleon!"; fi
	if [ -d "$Destination_of_AsusNBFnKeys" ]; then
	sudo rm -rf $CHAMELEON_kext_dir/AsusNBFnKeys.kext
	sudo cp -rf ~/$Destination_of_AsusNBFnKeys $CHAMELEON_kext_dir/AsusNBFnKeys.kext
	echo "### ---> AsusNBFnKeys Copied to Chameleon!"; fi; fi
fi
if [[ $Copy_to_CLOVER_kext_dir == "YES" ]]; then
	if [ ! -d "$CLOVER_kext_dir" ]; then
	echo "! Clover Volume not mounted! Or directory doesnt exists !"; else
	if [ -d "$Destination_of_ApplePS2Elan" ]; then
	rm -rf $CLOVER_kext_dir/ApplePS2ElanTouchpad.kext
	cp -rf ~/$Destination_of_ApplePS2Elan $CLOVER_kext_dir/ApplePS2ElanTouchpad.kext
	echo "### ---> Copied to Clover!"; fi
	if [ -d "$Destination_of_AsusNBFnKeys" ]; then
	rm -rf $CLOVER_kext_dir/AsusNBFnKeys.kext
	cp -rf ~/$Destination_of_AsusNBFnKeys $CLOVER_kext_dir/AsusNBFnKeys.kext
	echo "### ---> AsusNBFnKeys Copied to Clover!"; fi; fi
fi
if [[ $Make_BackUp_of_ApplePS2Elan_in_SLE == "YES" ]]; then
	sudo rm -rf /System/Library/Extensions/ApplePS2ElanTouchpad.kext.bak
	sudo cp -rf /System/Library/Extensions/ApplePS2ElanTouchpad.kext /System/Library/Extensions/ApplePS2ElanTouchpad.kext.bak
	echo "### ---> BackUp of ApplePS2Elan Successfull (SLE)!"
fi
if [[ $Make_BackUp_of_AsusNBFnKeys_in_SLE == "YES" ]]; then
	sudo rm -rf /System/Library/Extensions/ApplePS2ElanTouchpad.kext.bak
	sudo cp -rf /System/Library/Extensions/ApplePS2ElanTouchpad.kext /System/Library/Extensions/ApplePS2ElanTouchpad.kext.bak
	echo "### ---> BackUp of AsusNBFnKeys Successfull (SLE)!"
fi
if [[ $Install_ApplePS2Elan_to_SLE == "YES" ]]; then
	if [ ! -d "$Destination_of_ApplePS2Elan" ]; then
	echo "FILE: ~/$Destination_of_ApplePS2Elan --- Doesnt exist!!!"; else
	sudo rm -rf /System/Library/Extensions/ApplePS2ElanTouchpad.kext
	sudo cp -rf ~/$Destination_of_ApplePS2Elan /System/Library/Extensions/ApplePS2ElanTouchpad.kext
	echo "### ---> ApplePS2ElanTouchpad.kext Installed!"; fi
fi
if [[ $Install_AsusNBFnKeys_to_SLE == "YES" ]]; then
	if [ ! -d "$Destination_of_AsusNBFnKeys" ]; then
	echo "FILE: ~/$Destination_of_AsusNBFnKeys --- Doesnt exist!!!"; else
	sudo rm -rf /System/Library/Extensions/AsusNBFnKeys.kext
	sudo cp -rf ~/$Destination_of_AsusNBFnKeys /System/Library/Extensions/AsusNBFnKeys.kext
	echo "### ---> AsusNBFnKeys.kext Installed!"; fi
fi
if [ $Install_ApplePS2Elan_to_SLE == "YES" ] || [ $Install_AsusNBFnKeys_to_SLE == "YES" ]; then
	echo "### ---> Rebuilding Caches....!"
	sudo touch /System/Library/Extensions
	if [[ $Reboot_after_Install == "YES" ]]; then
		echo "### ---> ... REBOOTING SYSTEM ... <--- ###"
		sudo shutdown -r now
	fi
fi
fi
