#CommentFlag //
#InstallKeybdHook

// Kudos to Jarvis Prestidge for his pok3r script which i've based alot of this around.
// <COMPILER: v1.1.22.00>

Profile := 1  default
Count := 2

^F13:: 
	Profile := Profile = Count ? 1 : Profile + 1
	ToolTip, % "Profile " Profile
	SetTimer, RemoveToolTip, -1000
return

RemoveToolTip:
ToolTip
return

F13::SendInput {F13}

#If Profile = 1
F13 & SC029::SendInput {ESC}

// F13 + wasd (left, down, up, right)
#If Profile = 1
F13 & a::Send {Blind}{Left DownTemp}
F13 & a up::Send {Blind}{Left Up}
#If Profile = 1
F13 & s::Send {Blind}{Down DownTemp}
F13 & s up::Send {Blind}{Down Up}
#If Profile = 1
F13 & w::Send {Blind}{Up DownTemp}
F13 & w up::Send {Blind}{Up Up}
#If Profile = 1
F13 & d::Send {Blind}{Right DownTemp}
F13 & d up::Send {Blind}{Right Up}


// F13 + uohy (pgdown, pgup, home, end)
#If Profile = 1
F13 & o::SendInput {Blind}{PgDn Down}
F13 & o up::SendInput {Blind}{PgDn Up}
#If Profile = 1
F13 & u::SendInput {Blind}{PgUp Down}
F13 & u up::SendInput {Blind}{PgUp Up}
#If Profile = 1
F13 & h::SendInput {Blind}{Home Down}
F13 & h up::SendInput {Blind}{Home Up}
#If Profile = 1
F13 & n::SendInput {Blind}{End Down}
F13 & n up::SendInput {Blind}{End Up}


// F13 + number keys equal function keys (F13-F24)
#If Profile = 1
F13 & 1::SendInput {Blind}{F13}
F13 & 2::SendInput {Blind}{F14}
F13 & 3::SendInput {Blind}{F15}
F13 & 4::SendInput {Blind}{F16}
F13 & 5::SendInput {Blind}{F17}
F13 & 6::SendInput {Blind}{F18}
F13 & 7::SendInput {Blind}{F19}
F13 & 8::SendInput {Blind}{F20}
F13 & 9::SendInput {Blind}{F21}
F13 & SC00B::SendInput {Blind}{F22}
F13 & SC00C::SendInput {Blind}{F23}
F13 & SC00D::SendInput {Blind}{F24}

// tilde + number keys equal function keys (f1-f12)
SC029 & 1::SendInput {Blind}{F1}
SC029 & 2::SendInput {Blind}{F2}
SC029 & 3::SendInput {Blind}{F3}
SC029 & 4::SendInput {Blind}{F4}
SC029 & 5::SendInput {Blind}{F5}
SC029 & 6::SendInput {Blind}{F6}
SC029 & 7::SendInput {Blind}{F7}
SC029 & 8::SendInput {Blind}{F8}
SC029 & 9::SendInput {Blind}{F9}
SC029 & SC00B::SendInput {Blind}{F10}
SC029 & SC00C::SendInput {Blind}{F11}
SC029 & SC00D::SendInput {Blind}{F12}

SC029::SendInput {SC029}

// Make F13 & Backspace equivalent to delete
#If Profile = 1
F13 & BS::SendInput {Del Down}
F13 & BS up::SendInput {Del Up}


// Make F13 & semicolon (;) equivalent to end
#If Profile = 1
F13 & ;::SendInput {End Down}
F13 & ; up::SendInput {End Up}


// Make F13 & Enter equivalent to Control+Enter
#If Profile = 1
F13 & Enter::SendInput {Ctrl down}{Enter}{Ctrl up}


// Make F13 & Space equivalent to Control+Space
#If Profile = 1
F13 & Space::SendInput {Ctrl down}{Space}{Ctrl up}

  
// Make F13 & p equivalent to PrintScreen
#If Profile = 1
F13 & p::SendInput {PrintScreen}


// Make F13 & q the previous media key
#If Profile = 1
F13 & q::SendInput {Media_Prev}


// Make F13 & e the next media key
#If Profile = 1
F13 & e::SendInput {Media_Next}


// Make F13 & Left Shift the application menu key 
#If Profile = 1
F13 & LShift::SendInput {AppsKey}


// Make F13 & m equivalent to WinKey+m (show Desktop)
#If Profile = 1
F13 & m::SendInput {LWin Down}{m}{LWin UP}


// Make F13 & LAlt make winmenu appear
~!F13::SendInput ^{ESC}


// Make tab + 1-6 be 7-\
Tab & 1::SendInput 7
Tab & 2::SendInput 8
Tab & 3::SendInput 9
Tab & 4::SendInput {SC00B}
Tab & 5::SendInput {SC00C}
Tab & 6::SendInput {SC00D}

// Make tab + <zxcasdqwe into num0 to num9
Tab & <::Numpad0
Tab & z::Numpad1
Tab & x::Numpad2
Tab & c::Numpad3
Tab & a::Numpad4
Tab & s::Numpad5
Tab & d::Numpad6
Tab & q::Numpad7
Tab & w::Numpad8
Tab & e::Numpad9


!Tab::Send {Alt Down}{Tab}
Tab::Send {Tab}

// Make profile 2 numpad
#If Profile = 2
<::Numpad0
z::Numpad1
x::Numpad2
c::Numpad3
a::Numpad4
s::Numpad5
d::Numpad6
q::Numpad7
w::Numpad8
e::Numpad9

Return
