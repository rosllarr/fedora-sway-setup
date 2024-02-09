echo "##########################"
echo "# install google-chrome  #"
echo "##########################"
check_repo_exists=$(dnf repolist | grep google-chrome | wc -l)
expect=1
if [ ! $check_repo_exists == $expect ]; then
	sudo dnf install fedora-workstation-repositories -y
	sudo dnf config-manager --set-enabled google-chrome
    sudo dnf install -y google-chrome-stable
fi