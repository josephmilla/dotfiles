# dotfiles
Dotfiles setup, shell scripts and whatnot

## Setup
1. I personally like this repo just start things off: https://github.com/nicolashery/mac-dev-setup
2. After that, I'd recommend doing this: https://github.com/mathiasbynens/dotfiles
3. BASH is not my thing, so we're gonna use ZSH with OH-MY-ZSH: https://github.com/robbyrussell/oh-my-zsh
  
  `$ curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh`

4. For the theme, we're gonna use a theme made by my awesome mentor, [Brock Angelo](https://github.com/brock).
  
  `$ cd ~/.oh-my-zsh/themes && curl -O https://raw.githubusercontent.com/josephmilla/dotfiles/master/smt-mod.zsh-theme`
 
  It's full of emoticons! 👍

5. Lastly, if you want to add anything else to your dotfiles. Use `.extra` and just do `source .extra` in your `.zshrc`

### iTerm Multipanel Script
```
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
```
  
