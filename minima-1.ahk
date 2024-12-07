; default directives
#NoEnv ; for future compatibility
#Warn ; send error warnings
SendMode Input ; use sendinput
SetWorkingDir %A_ScriptDir%  ; consistent starting directory
; custom directives
#menumaskkey vke8
#singleinstance force
#maxthreadsperhotkey 2 ; make toggle global
#installkeybdhook
#installmousehook

;
mode := "a1"
sel := 0 ; select mode
autoShi := 0
s1_st := 0
z1_st := 0
u1_st := 0
t1_st := 0
spaceAsEnter := 0
/*
global size := 27
global dir := -1
global initSize := 27 ; temporary
*/
return
;
#include minima-2.ahk
#include minima-3.ahk
#include minima-4.ahk


rst() {
    global mode := "a1"
    if (autoShi == 1) {
        global autoShi := 0
    }
}
f1(text1) {
    send {text}%text1%
    rst()
}
f2(hotkey1) {
    send %hotkey1%
    rst()
}

#if (mode = "a1")
    $4:: f1("l")
    $5:: f1("d")
    $9:: f1("o")
    $0:: f1("u")
    $w:: f1("n")
    $e:: f1("r")
    $r:: f1("t")
    $t:: f1("s")
    $y:: f1("g")
    $u:: f1("y")
    $i:: f1("h")
    $o:: f1("a")
    $p:: f1("e")
    $[:: f1("i")
    $f:: f1("m")
    $g:: f1("c")
    $h:: f1("v")
    $j:: f1("p")
    $k:: f1(",")
    $v::
        if (spaceAsEnter) {
            send {enter}
        }
        else if (sel) {
            send {right} ; remove selection
            global sel := 0
        }
        else {        
            send {space}
            global mode := "a1"
            if (autoShi == 1) {
                global mode := "u1"
            }   
        }
    return
    $b:: f2("{space}") ; space
    
    $m:: global mode := "a2" ; alp2
    $d:: modf("s1", "s1_st", "d")
    $l:: modf("s1", "s1_st", "l")
    $q:: modf("z1", "z1_st", "q")
    $]:: modf("z1", "z1_st", "]")
    $s:: modf("u1", "u1_st", "s")
    $;:: modf("u1", "u1_st", ";")
    $c:: modf("t1", "t1_st", "c")
    $,:: modf("t1", "t1_st", ",")
    
    $-:: doHots()
#if

modf(modeName, keyState, keyName) {
    global mode
    mode := modeName
    
    SetEnv, %keyState%, 1 ; key state is "pressed"
    keywait, %keyName%    ; when released
    SetEnv, %keyState%, 0 ; key state is "released"
}

#if (mode = "a2")
    $w:: f1("b")
    $e:: f1("x")
    $t:: f1("w")
    $y:: f1("z")
    $g:: f1("q")
    $i:: f1("f")
    $j:: f1("k")
    $[:: f1("j")
    $v:: global mode := "a2r"
#if

#if (mode = "u1" || u1_st == 1)
    $4:: f1("L")
    $5:: f1("D")
    $9:: f1("O")
    $0:: f1("U")
    $w:: f1("N")
    $e:: f1("R")
    $r:: f1("T")
    $t:: f1("S")
    $y:: f1("G")
    $u:: f1("Y")
    $i:: f1("H")
    $o:: f1("A")
    $p:: f1("E")
    $[:: f1("I")
    $f:: f1("M")
    $g:: f1("C")
    $h:: f1("V")
    $j:: f1("P")
    $m:: global mode := "u2"
    $d:: global mode := "s2"
    $l:: global mode := "s2"
#if

#if (mode = "u2")
    $w:: f1("B")
    $e:: f1("X")
    $t:: f1("W")
    $y:: f1("Z")
    $g:: f1("Q")
    $i:: f1("F")
    $j:: f1("K")
    $[:: f1("J")
#if

#if (mode = "a2r")
    $i:: f1("ff")
    $j:: f1("kk")
    $[:: f1("jj")
#if

; these defaults will fire if hotkey is invalid
$4:: rst()
$5:: rst()
$9:: rst()
$0:: rst()
$q:: rst()
$w:: rst()
$e:: rst()
$r:: rst()
$t:: rst()
$y:: rst()
$u:: rst()
$i:: rst()
$o:: rst()
$p:: rst()
$[:: rst()
$]:: rst()
$s:: rst()
$d:: rst()
$f:: rst()
$g:: rst()
$h:: rst()
$j:: rst()
$k:: rst()
$l:: rst()
$;:: rst()
$c:: rst()
$v:: rst()
$m:: rst()
$,:: rst()

$space:: k

;--- end of prose section

; no $ causes reference loops
; having a "m & carrier" hotkey makes m as mod fail as a hold key