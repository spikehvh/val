#NoEnv 
#persistent
#MaxThreadsPerHotkey 2
#KeyHistory 0
ListLines Off
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input
CoordMode, Pixel, Screen

;HOTYBOYSTROKE
key_hold_mode	:= 	"Right"
key_off		    := 	"Down"
key_hold	    :=	"XButton2"

;LEET
pixel_box	:=	7
pixel_sens	:=	36
pixel_color	:=	0x6E0064
tap_time	:=	70
	
;DO NOT TOUCH?
Gui,2:Font,Cdefault,Fixedsys
Gui,2:Color,Black
Gui,2:Color, EEAA99
Gui 2:+LastFound +ToolWindow +AlwaysOnTop -Caption
WinSet, TransColor, EEAA99
2Guiescape:
2Guiclose:
leftbound:= A_ScreenWidth/2-pixel_box
rightbound:= A_ScreenWidth/2+pixel_box
topbound:= A_ScreenHeight/2-pixel_box
bottombound:= A_ScreenHeight/2+pixel_box 
hotkey, %key_hold_mode%, holdmode
hotkey, %key_off%, offloop
return
start:
gui,2:submit,nohide
terminate:
SoundBeep, 300, 200
SoundBeep, 200, 200
Sleep 400
exitapp
stayon:
settimer, loop2, off
settimer, loop1, 100
GuiControl,2: hide,B1
GuiControl,2: hide,C1
GuiControl,2: hide,B2
GuiControl,2: hide,C2
GuiControl,2: show,B3
GuiControl,2: show,C3
return
holdmode:
settimer, loop1, off
settimer, loop2, 100
GuiControl,2: hide,B1
GuiControl,2: hide,C1
GuiControl,2: show,B2
GuiControl,2: show,C2
GuiControl,2: hide,B3
GuiControl,2: hide,C3
return
offloop:
SoundBeep, 300, 200
settimer, loop1, off
settimer, loop2, off
GuiControl,2: show,B1
GuiControl,2: show,C1
GuiControl,2: hide,B2
GuiControl,2: hide,C2
GuiControl,2: hide,B3
GuiControl,2: hide,C3
return
guihide:
GuiControl,2: hide,B1
GuiControl,2: hide,C1
GuiControl,2: hide,B2
GuiControl,2: hide,C2
GuiControl,2: hide,B3
GuiControl,2: hide,C3
return

loop1:
sppsddpdswfefw()
return

loop2:
While GetKeyState(key_hold, "P"){
sppsddpdswfefw()
}
return	

sppsddpdswfefw() {
global	
PixelSearch, FoundX, FoundY, leftbound, topbound, rightbound, bottombound, pixel_color, pixel_sens, Fast RGB
If !(ErrorLevel)
{
If !GetKeyState("LButton")
{
click
sleep %tap_time%
}
}
return
}
