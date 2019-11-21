; FixWin - A simple set of tweaks to make Windows usable
; Copyright (C) 2019 - Nathan <Oxodao> JANCZEWSKI

; This program is free software: you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation, either version 3 of the License, or
; (at your option) any later version.

; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.

; You should have received a copy of the GNU General Public License
; along with this program.  If not, see <https://www.gnu.org/licenses/>

; Swap the escape key and the capslock
Capslock::Esc
Esc::Capslock

; Fixing CTRL + Backspace not working in some applications
$^Backspace::
if !WinActive("ahk_exe devenv.exe") ; Explicitely blacklisting VisualStudio because it works in it and this fix messes with my vim plugin
    Send ^+{Left}{Backspace}        ; Need to find a way to blacklist Cmder / bash too
else
    Send ^{Backspace}
return

; Binding Win+q to the same as Alt+F4
#Q::
    Send !{F4}
    return

; Binding Win+w to run Firefox (Change here if you use something else)
#W::
    Run "C:\Program Files\Mozilla Firefox\firefox.exe"
