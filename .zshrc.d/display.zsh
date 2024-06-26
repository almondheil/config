# display.zsh
# programs that display on shell startup

# Display tmux sessions if we're not in a tmux or screen session
if command -v tmux > /dev/null && test -f "$HOME/.local/script/tmux-status"
then
	[[ ! $TERM =~ screen ]] && [ -z $TMUX ] && "$HOME/.local/script/tmux-status"
fi
