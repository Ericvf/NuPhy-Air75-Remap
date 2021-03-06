; Mechanical Keyboard remapper
; Works on NuPhy-75 in Mac Mode

; THIS SOFTWARE IS NO LONGER REQUIRED
; PLEASE USE THE NUPHY UTIL
; Details: https://discord.com/channels/864389832829567067/864414174142529537

#InstallKeybdHook
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
; SetCapsLockState, AlwaysOff
SetWorkingDir, %A_ScriptDir%

Menu, Tray,  Icon, keyboard_on.ico, 1, 1

CapsLock & Tab::
Suspend, Permit
Suspend
If (A_IsSuspended)
{
  TrayTip,, NuPhy-Air75 script disabled
  Menu, Tray,  Icon, keyboard_off.ico, 1, 1

  
} else { 
  TrayTip,, NuPhy-Air75 enabled
  Menu, Tray,  Icon, keyboard_on.ico, 1, 1

}
Return 

; Permanently swap Left ALT and Left WinKey
$LAlt Up::
  Send {LWinUp}
  Return

$LWin Up::
  Send {LAlt Up}
  Return

$LAlt::
  Send {LWinDown}
  Return

$LWin::
  Send {LAlt Down}
  Return  

CapsLock & F7::Send {Media_Prev}
CapsLock & F8::Send {Media_Play_Pause}
CapsLock & F9::Send {Media_Next}

; Volume
CapsLock & F10::Send {Volume_Mute}
CapsLock & F11::Send {Volume_Down}
CapsLock & F12::Send {Volume_Up}