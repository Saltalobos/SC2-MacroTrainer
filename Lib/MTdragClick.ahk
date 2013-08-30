MTdragClick(x1, y1, x2, y2, Button := "Left", Modifiers := "")
{
	GLOBAL GameIdentifier

	if instr(modifiers, "+")
		ModifersDown .= "{VK10 Down}", ModifersUp .= "{VK10 Up}"
	if instr(modifiers, "^")
		ModifersDown .= "{VK11 Down}", ModifersUp .= "{VK11 Up}"
	if instr(modifiers, "!")
		ModifersDown .= "{VK12 Down}", ModifersUp .= "{VK12 Up}"
	if ModifersDown
		controlsend,, % "{Blind}" ModifersDown, %GameIdentifier%
	ControlClick, x%x1% y%y1%, %GameIdentifier%,, %button%,, D
	ControlClick, x%x2% y%y2%, %GameIdentifier%,, %button%,, U
	if ModifersUp
		controlsend,, % "{Blind}" ModifersUp, %GameIdentifier%
	return
}
