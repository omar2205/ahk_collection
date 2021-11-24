; v0.2
; By oskr.nl | 2021
; 167 & 168
; 4 Finger swipe left = Browser Forward
;                right = Back
#SingleInstance Force
#Persistent

; ==== Custom tray menu

Menu, Tray, NoStandard
Menu, Tray, Add, &Restart Touchpad, RestartTouchpad
Menu, Tray, Default, &Restart Touchpad
Menu, Tray, Add, &Suspend, MenuSuspend
Menu, Tray, Add, E&xit, MenuExit
Menu, Tray, Click, 1  ; Remove this line if you prefer double-click vs. single-click.
return  ; end of auto-execute section

MenuSuspend:
Suspend
return

MenuExit:
ExitApp

RestartTouchpad:
run "D:\Projects\restart_touchpad\restart_touchpad.bat"
return

; swiping

Browser_Forward::
; press CTRL+WIN+ARROW_LEFT
  Send ^#{Right}
return

Browser_Back::
; press CTRL+WIN+ARROW_RIGHT
  Send ^#{Left}
return
