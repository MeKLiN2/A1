`::;
tab::scrolllock
LWin::numlock
!F4::Return
!Tab::Return
^esc::Return
!esc::Return
!F9::!Tab
^]::
Send, {LWin Down}r{LWin Up}
Return
!F11::
Loop, 1
{
Sleep, 100
Send {F12}
Sleep, 50
Send map_enable_background_maps 0
Send {enter}
Send {F12}
}
Return
!F12::
Loop, 1
{
Sleep, 100
Send {F12}
Sleep, 50
Send map_enable_background_maps 1
Send {enter}
Send {F12}
}
Return
