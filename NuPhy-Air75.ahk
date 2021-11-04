; Mechanical Keyboard remapper
; Works on NuPhy-75 in Mac Mode

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetCapsLockState, AlwaysOff
SetWorkingDir, %A_ScriptDir%

Menu, Tray,  Icon, keyboard_on.ico, 1, 1

CapsLock & Tab::
Suspend, Permit
Suspend
If (A_IsSuspended)
{
  TrayTip,, RK61 script disabled
  Menu, Tray,  Icon, keyboard_off.ico, 1, 1

  
} else { 
  TrayTip,, RK61 script enabled
  Menu, Tray,  Icon, keyboard_on.ico, 1, 1

}
Return 

; Permanently swap Left ALT and Left WinKey
LAlt::LWin
$LWin::LAlt

CapsLock & F7::Send {Media_Prev}
CapsLock & F8::Send {Media_Play_Pause}
CapsLock & F9::Send {Media_Next}

; Volume
CapsLock & F10::Send {Volume_Mute}
CapsLock & F11::Send {Volume_Down}
CapsLock & F12::Send {Volume_Up}