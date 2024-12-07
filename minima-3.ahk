
c & w:: AltTab

doHots() {
    global spaceAsEnter := 0
    ; start recording the hotstring (eg. "sout")
    inputbox, str,,,, 125, 90
    
    if (str = "sout") {
        send {text}System.out.println();
        send {left 2}
    }
}

#if ((mode = "t1" || getkeystate("c", "P") || t1_st = 1) && sel)
    $v::
        send {right} ; remove selection
        global sel := 0
    return
    $9:: f2("+{up}+{home}")
    $0:: f2("+{up 8}+{home}")
    $o:: f2("+{down}+{home}")
    $[:: f2("+{down 8}+{home}") 
#if

#if ((mode = "t1" || getkeystate("c", "P") || t1_st = 1) && !sel)
    $9:: f2("{up}")
    $0:: f2("{up 8}")
    $u:: f2("{left 8}")
    $i:: f2("{left}")
    $o:: f2("{down}")
    $p:: f2("{right}")
    $[:: f2("{down 8}")
    $]:: f2("{right 8}")
    $k:: f2("{home}")
    $l:: f2("{end}")

    $j::
    	global sel := 1
		send {end}+{home} ; select current line
    return
    $4:: f2("!{f4}") ; close win
    $5:: f2("#{down}") ; min win
    
	$e::	; mouse hold is a toggle
		MouseClick, left, , , , , D
		KeyWait, LAlt
		MouseClick, left, , , , , U
	return
	$t::
		MouseClick, right, , , 1
	return
#if

#if (mode = "t1" || getkeystate(",", "P"))
    $4:: f2("{pgup}")
    $5:: f2("{home}^{up 10}") ; scroll up
    ; $q:: f2("^{z}") ; undo
    $w:: f2("^{a}") ; select all
    $e:: f2("^{s}") ; save file
    $r:: f2("{home}^{down 10}") ; scroll down
    ; $t:: f2("^{f}") ; find text
    $t:: f2("{pgdn}")
    $y:: f2("^{t}^+{tab}") ; new tab
    $d:: f2("^+{tab}") ; tab left
    $f:: f2("^{w}") ; close tab
    $g:: f2("^{tab}") ; tab right
    $h:: f2("^{o}") ; open file
    
    $i::
        f2("^{x}") ; cut
        global sel := 0
    return
    $o::
        f2("^{c}") ; copy
        global sel := 0
    return
    $p::
        f2("^{v}") ; paste
        global sel := 0
    return
#if

/*
#if (mode = "e1" && sel = 1)
    $9:: f2("+{up}")
    $0:: f2("+{up 8}")
    $u:: f2("^+{left}") ; sel word left
    $i:: f2("+{left}")
    $o:: f2("+{down}")
    $p:: f2("+{right}")
    $[:: f2("+{down 8}")
    $]:: f2("^+{right}") ; sel word right
    $j:: f2("+{home}")
    $l:: f2("+{end}")

    $v:: ; remove selection
        global sel := 0
        f2("{right}{left}")
    return
#if
*/

/*





