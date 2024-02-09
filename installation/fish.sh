echo "######################"
echo "# install fish-shell #"
echo "######################"
check_repo_exists=$(dnf repolist | grep shells_fish | wc -l)
expect=1
if [ ! $check_repo_exists == $expect ]; then
	sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/shells:fish/Fedora_39/shells:fish.repo
    sudo dnf install -y fish
fi

echo "#####################"
echo "# config fish-shell #"
echo "#####################"
omf_home=$HOME/.local/share/omf
if [ ! -d $omf_home ]; then
	# install oh-my-fish
	curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
	# install plugins
	omf install bang-bang
	omf install clearance
fi
# copy config
cp -v $home_skel/.config/fish/functions/* $HOME/.config/fish/functions/
cp -v $home_skel/.config/fish/config.fish $HOME/.config/fish/
cp -v $home_skel/.config/fish/fish_variables $HOME/.config/fish/