essential_programs=(kitty tmux)

security_programs=(pass browserpass browserpass-firefox browserpass-chromium)
long_install=(emacs thefuck)
programs=("${essential_programs[@]}" "${security_programs[@]}" "${long_install[@]}")
for program in "${programs[@]}"
do
	yay -S --needed --noconfirm $program
done

modules=$HOME/scripts
[ -d "$HOME/.doom.d" ] || source $modules/scripts/programs/doom
# set defaults
# iif [ -x "$(kitty)" ]; then
# TODO update default to kitty
# TODO  git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack


