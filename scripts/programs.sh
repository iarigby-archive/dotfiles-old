essential_programs=(kitty tmux firefox)
# TODO add to main
terminal_programs=(tdrop)

convenience_programs=(fzf rofi rofi-pass neofetch tldr)
dev_programs=(yarn nodejs vscode)#TODO add amin
alternative_programs=(bat fd ripgrep)

security_programs=(pass browserpass browserpass-firefox browserpass-chromium)

# firefox - sweet theme

long_install=(emacs thefuck)
programs=("${essential_programs[@]}" 
	"${security_programs[@]}" 
	"${convenience_programs[@]}"
	"${long_install[@]}")
for program in "${programs[@]}"
do
	yay -S --needed --noconfirm $program
done

modules=$HOME/scripts
[ -d "$HOME/.doom.d" ] || source $modules/scripts/programs/doom
[ -f "$(yay)" ] && set-window-option -g mode-keys vi
# set defaults
# iif [ -x "$(kitty)" ]; then
# TODO update default to kitty
# TODO  git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack


# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
