#SingleInstance force

; Creator: SevenOilRigs :3
; 800 dpi
; 7 sensitivity
; 144 fps
; 1920 x 1080 resolution
; press [ when you are in the landing to start macro
; press Esc to stop macro

Mouse_Move(cord_x, cord_y)
{
    MouseMove, cord_x * (A_ScreenWidth / 1920), cord_y * (A_ScreenHeight / 1080), 1
}
Esc::
Reload
return

[::
Loop     				; Infinite loop to go to Orbit
{
	Loop 80 			; Reloading the Landing 80 times
	{
		Send, 7			; Keybind for Map
		Sleep, 1500
		Mouse_Move(0,500)
		Sleep, 1500 * (A_ScreenHeight / 1080)
		Mouse_Move(684,516)
		Sleep, 10
		Send, {Lbutton Down}
		Sleep, 1200
		Send, {Lbutton Up}
		Sleep, 10000
		DllCall("mouse_event", "UInt", 0x01, "Int", -700, "Int", 0, "UInt", 0, "UInt", 0)
		Send {Shift Down}
		Send {w Down}
		Sleep 7400
		Send {Shift Up}
		Send {w Up}
		DllCall("mouse_event", "UInt", 0x01, "Int", 2900, "Int", 0, "UInt", 0, "UInt", 0)
		Sleep 30000
		Send {Shift Down}
		Send {w Down}
		Sleep 6400
		DllCall("mouse_event", "UInt", 0x01, "Int", -680, "Int", 0, "UInt", 0, "UInt", 0)
		Sleep 3200
		Send {Shift Up}
		Send {w Up}
		DllCall("mouse_event", "UInt", 0x01, "Int", -1800, "Int", 0, "UInt", 0, "UInt", 0)
		Sleep 500
		Send {f Down}		; Keybind for Interact
		Sleep 1200
		Send {f Up}			; Keybind for Interact
		Sleep 500
	}
	Send {6}				; Keybind for Ghost
	Sleep 1000
	Send {8 Down}			; Keybind for Orbit
	Sleep 4000
	Send {8 Up}
	Sleep 10000
	Send {7}				; Keybind for Map
	Sleep 1000
	MouseMove, 1285, 640, 0
	Sleep 1500
	Send {Lbutton}
	Sleep 2000
	Mouse_Move(0,500)
	Sleep, 1500 * (A_ScreenHeight / 1080)
	Mouse_Move(684,516)
	Sleep, 10
	Send, {Lbutton Down}
	Sleep, 1200
	Send, {Lbutton Up}
	Sleep, 2000
	MouseMove, 2160, 1200, 0
	Send, {Lbutton Down}
	Sleep, 1200
	Send, {Lbutton Up}
	Sleep, 30000
}
return
