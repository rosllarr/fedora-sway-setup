echo "#######################"
echo "# overwrite ~/.bashrc #"
echo "#######################"
cp -v $home_skel/.bashrc $HOME/.bashrc

echo "#########################"
echo "# enable rpmfusion repo #"
echo "#########################"
check_repo_exists=$(dnf repolist | grep rpmfusion | wc -l)
expect=4
if [ ! $check_repo_exists == $expect ]; then
	sudo dnf install -y dnf-plugins-core
	sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
fi

