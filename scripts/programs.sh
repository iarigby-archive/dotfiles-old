essential_programs=(kitty tmux)

convenience_programs=(rofi rofi-pass neofetch)

security_programs=(pass browserpass browserpass-firefox browserpass-chromium)

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
