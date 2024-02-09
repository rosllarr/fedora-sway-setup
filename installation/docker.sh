echo "##################"
echo "# install docker #"
echo "##################"
check_repo_exists=$(dnf repolist | grep docker-ce-stable | wc -l)
expect=1
if [ ! $check_repo_exists == $expect ]; then
	sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
    sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
    echo "#######################"
    echo "# post-install docker #"
    echo "#######################"
    sudo systemctl enable --now docker
    sudo systemctl enable --now containerd
    sudo usermod -aG docker $USER
    echo "#############################################################"
    echo "# install docker successfully, please logout and login back #"
    echo "#############################################################"
fi

