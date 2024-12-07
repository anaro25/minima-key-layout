

; -----

lctrl & c:: send ^{c} ; copy

lctrl & v:: send +{ins} ; universal paste

; --- PYTHON COMMANDS
/*
3 & 0:: ; open terminal
	Send #{r}
	Sleep 300
	Send {text}cmd
	Send {Enter}
	Sleep 300
	Send {text}cd/
	Send {Enter}
	Send {text}cd dev/pyt-
	Send {Enter}
	Send {text}cls
	Send {Enter}
return

3 & 9:: ; run python
	WinActivate, C:\WINDOWS\system32\cmd.exe
	WinActivate, Select C:\WINDOWS\system32\cmd.exe
	
	Send ^{c} ; stop running
	Send {text} cls 
	Send {Enter}
	
	send {text} python main.py
	Send {Enter}
return
*/

; --- JAVA COMMANDS

3 & 0:: ; open terminal
	Send #{r}
	Sleep 300
	Send {text}cmd
	Send {Enter}
	Sleep 300
	Send {text}cd/
	Send {Enter}
	Send {text}cd dev/jav-
	Send {Enter}
	Send {text}cls
	Send {Enter}
return


3 & i:: ; compile java
	WinActivate, C:\Windows\system32\cmd.exe
	WinActivate, Select C:\Windows\system32\cmd.exe
	Send ^{c} ; stop running
	Send {text} cls 
	sleep 300
	Send {Enter}
	; Send {Text}javac -d . *.java
	send {text} javac -Xlint:unchecked -d . *.java
	Send {Enter}
return

3 & 9:: ; run java
	WinActivate, C:\Windows\system32\cmd.exe
	WinActivate, Select C:\Windows\system32\cmd.exe
	Send {Text}java x.Main
	Send {Enter}
return

- & t::
	send {text}System.out.println();
	send {left 2}
return

