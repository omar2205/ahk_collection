#Persistent  ; Keep this sample script running until the user selects Exit.
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
