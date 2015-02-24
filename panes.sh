# iTerm Panes
newPaneDown() {
osascript -e "
tell application \"iTerm\"
  make new terminal
  tell the current terminal
    activate current session
    tell the last session
      tell i term application \"System Events\" to key code 2 using {shift down, command down}
    end tell
  end tell
end tell"
}
newPaneLeft() {
osascript -e "
tell application \"iTerm\"
    make new terminal
    tell the current terminal
        activate current session
        tell the last session
            tell i term application \"System Events\" to key code 2 using command down
        end tell
    end tell
end tell"
}
newPanes4x4() {
/usr/bin/env osascript <<-EOF
tell application "iTerm"
	activate
		launch session "Panes"
		tell i term application "System Events" to keystroke "d" using command down
		tell i term application "System Events" to keystroke "D" using command down
		tell i term application "System Events" to keystroke "[" using command down
		tell i term application "System Events" to keystroke "[" using command down
		tell i term application "System Events" to keystroke "D" using command down
end tell
EOF
}
alias p2='newPaneLeft'
alias p3='newPaneDown && newPaneLeft'
alias p4='newPanes4x4'
