
#if (mode = "a2" || getkeystate("m", "P"))
    $5:: f2("{bs}") ; bs
    $r:: f2("^{bs}") ; word bs
    $f:: f2("{end}+{home}{bs}") ; line bs
    
    $9:: f2("{enter}") ; enter
    $0:: f2("{tab}") ; tab
    
    $]:: f2("{esc}")
#if

#if (mode = "s1" || s1_st == 1)
    $4:: f1(":")
    $5:: f1(";")
    $w:: f1("{")
    $e:: f1("'")
    $r:: f1("=")
    $t::
        f1(".")
        global autoShi := 1
    return
    $y:: f1("&")
    $f:: f1("$")
    $g:: f1("_")
    $h:: f1("[")
    
    $9:: f1("*")
    $0:: f1(">")
    $u:: f1("\")
    $i:: f1("/")
    $o:: f1("-")
    $p:: f1("""")
    $[:: f1("<")
    $j:: f1("(")
    $k:: f1("#")
#if

#if (mode = "z1" || z1_st == 1)
    $4:: f1("5")
    $5:: f1("4")
    $w:: f1("7")
    $e:: f1("3")
    $r:: f1("2")
    $t:: f1("1")
    $y:: f1("8")
    $f:: f1("6")
    $g:: f1("0")
    $h:: f1("9")
    
    $9:: f1("%")
    $0::
        f1("?")
        global autoShi := 1
    return
    $u:: f1("^")
    $i:: f1("|")
    $o:: f1("+")
    $p::
        f1("!")
        global autoShi := 1
    return
    $[:: f1("~")
    $j:: f1("@")
    $k:: f1("``")
#if

#if (mode = "s2")
    $w:: f1("}")
    $h:: f1("]")
    $j:: f1(")")
#if

