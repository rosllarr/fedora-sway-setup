#!/usr/bin/env bash

# global variables
home_skel=home/skel
etc_skel=etc/skel
usr_bin=/usr/local/bin

source ./installation/global.sh
source ./installation/docker.sh
source ./installation/fish.sh
source ./installation/google-chrome.sh




# ######################################
# # enable alacritty and lazygit repos #
# ######################################
# check_repo_exists=$(dnf repolist | grep atim | wc -l)
# expect=2
# if [ ! $check_repo_exists == $expect ]; then
# 	sudo dnf copr enable atim/alacritty -y
# 	sudo dnf copr enable atim/lazygit -y
# fi

# sudo dnf groupinstall -y 'C Development Tools and Libraries'
# sudo dnf install -y $(cat packages-lists)
# pip3 install --user -r python-packages

# ################
# # install rust #
# ################
# if ! command -v cargo &>/dev/null; then
# 	curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
# 	source ~/.bashrc
# 	cargo install bat eza termusic termusic-server ripgrep zoxide fnm
# 	cargo install joshuto --version 0.9.4
# fi

# ###############
# # install fzf #
# ###############
# if [ ! -d $HOME/.fzf ]; then
# 	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
# 	bash ~/.fzf/install
# 	source ~/.bashrc
# fi

# ###############
# # config sway #
# ###############
# sway_home=$HOME/.config/swayprintf "##########################\n# enable fish-shell repo #\n##########################"
# check_repo_exists=$(dnf repolist | grep shells_fish | wc -l)
# expect=1
# if [ ! $check_repo_exists == $expect ]; then
# 	sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/shells:fish/Fedora_39/shells:fish.repo
# fi

# ######################################
# # enable alacritty and lazygit repos #
# ######################################
# check_repo_exists=$(dnf repolist | grep atim | wc -l)
# expect=2
# if [ ! $check_repo_exists == $expect ]; then
# 	sudo dnf copr enable atim/alacritty -y
# 	sudo dnf copr enable atim/lazygit -y
# fi

# sudo dnf groupinstall -y 'C Development Tools and Libraries'
# sudo dnf install -y $(cat packages-lists)
# pip3 install --user -r python-packages

# ################
# # install rust #
# ################
# if ! command -v cargo &>/dev/null; then
# 	curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
# 	source ~/.bashrc
# 	cargo install bat eza termusic termusic-server ripgrep zoxide fnm
# 	cargo install joshuto --version 0.9.4
# fi

# ###############
# # install fzf #
# ###############
# if [ ! -d $HOME/.fzf ]; then
# 	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
# 	bash ~/.fzf/install
# 	source ~/.bashrc
# fi

# ###############
# # config sway #
# ###############
# sway_home=$HOME/.config/sway
# if [ ! -d $sway_home ]; then
# 	mkdir -p $sway_home
# fi
# cp $home_skel/.config/sway/config $sway_home/config

# #######################
# # install nerd fronts #
# #######################
# nerd_fonts_home=$HOME/.nerd-fonts
# if [ ! -d $nerd_fonts_home ]; then
# 	git clone https://github.com/ryanoasis/nerd-fonts.git ~/.nerd-fonts
# 	bash ~/.nerd-fonts/install.sh
# fi

# ################
# # install Node #
# ################
# node_version_file=$HOME/.node-version
# if [ ! -f $node_version_file ]; then
# 	cp $home_skel/.node-version $node_version_file
# 	# bug on this step, run commands manually after this script is finished.
# 	# fnm install
# fi

# ###################
# # install lazyvim #
# ###################
# nvim_dir=$HOME/.config/nvim
# if [ ! -d $nvim_dir ]; then
# 	git clone https://github.com/LazyVim/starter $nvim_dir
# 	rm -rf $nvim_dir/.git
# fi
# cp $home_skel/.config/nvim/init.lua $nvim_dir/init.lua
# cp $home_skel/.config/nvim/lua/config/lazy.lua $nvim_dir/lua/config/lazy.lua
# cp $home_skel/.config/nvim/lua/plugins/* $nvim_dir/lua/plugins/


# ####################
# # config alacritty #
# ####################
# alacritty_home=$HOME/.config/alacritty
# if [ ! -d $alacritty_home ]; then
# 	mkdir -p $alacritty_home/themes
# 	git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
# fi
# cp $home_skel/.config/alacritty/alacritty.yml $alacritty_home/alacritty.yml

# #######################
# # post-install docker #
# #######################
# sudo systemctl enable --now docker
# sudo systemctl enable --now containerd
# sudo usermod -aG docker $USER
# echo "Install Docker successfully, Please Log out and Log back!!"

# #########################
# # paste utility scripts #
# #########################
# sudo cp $etc_skel/$usr_bin/* $usr_bin/

# #############
# # setup vpn #
# #############
# # setup Opsta vpn
# vpn_home=$HOME/vpn
# cp -r $home_skel/vpn $vpn_home
# # setup PTT vpn
# vpn_ptt_venv=$HOME/.vpn-ptt-venv
# if [ ! -d $vpn_ptt_venv ]; then
# 	python3 -m venv $vpn_ptt_venv
# 	source "$vpn_ptt_venv/bin/activate"
# 	pip3 install -r $vpn_home/vpn-ptt-requirements.txt
# 	deactivate
# fi

# ######################
# # install kube stack #
# ######################
# if [ ! -f $usr_bin/kubectl ]; then
# 	# install kubectl
# 	curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
# 	chmod +x kubectl
# 	sudo mv kubectl $usr_bin/
# fi

# if [ ! -f $usr_bin/kubectx ]; then
# 	# install kubectx
# 	sudo git clone https://github.com/ahmetb/kubectx $HOME/.kubectx
# 	sudo ln -s $HOME/.kubectx/kubectx $usr_bin/kubectx
# 	sudo ln -s $HOME/.kubectx/kubens $usr_bin/kubens
# fi

# if [ ! -f $usr_bin/helm ]; then
# 	# install helm
# 	curl -LO https://get.helm.sh/helm-v3.13.2-linux-amd64.tar.gz
# 	tar xf helm-*
# 	chmod +x linux-amd64/helm
# 	sudo mv linux-amd64/helm $usr_bin/
# 	rm -rf linux-amd64 helm-*
# fi

# if [ ! -f $usr_bin/minikube ]; then
# 	# install minikube
# 	curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
# 	sudo install minikube-linux-amd64 $usr_bin/minikube
# 	rm -rvf minikube-linux-amd64
# fi

# ################
# # disable beep #
# ################
# if [ ! -f /etc/systemd/system/disable-pcspkr.service ]; then
# 	sudo cp $etc_skel/etc/systemd/system/disable-pcspkr.service /etc/systemd/system/disable-pcspkr.service
# 	sudo systemctl enable --now disable-pcspkr.service
# fi

# ###################
# # install postman #
# ###################
# postman_home=$HOME/.Postman
# if [ ! -d $postman_home ]; then
# 	wget https://dl.pstmn.io/download/latest/linux_64
# 	tar xf linux_64
# 	rm -rf linux_64
# 	mv Postman $postman_home
# 	sudo ln -sf $postman_home/Postman /usr/local/bin/postman
# fi

# ##################
# # config zathura #
# ##################
# zathura_home=$HOME/.config/zathura
# if [ ! -d $zathura_home ]; then
# 	mkdir $zathura_home
# 	cp $home_skel/.config/zathura/zathurarc $zathura_home/zathurarc
# fi

# echo "Manual run -- fnm install"
# if [ ! -d $sway_home ]; then
# 	mkdir -p $sway_home
# fi
# cp $home_skel/.config/sway/config $sway_home/config

# #######################
# # install nerd fronts #
# #######################
# nerd_fonts_home=$HOME/.nerd-fonts
# if [ ! -d $nerd_fonts_home ]; then
# 	git clone https://github.com/ryanoasis/nerd-fonts.git ~/.nerd-fonts
# 	bash ~/.nerd-fonts/install.sh
# fi

# ################
# # install Node #
# ################
# node_version_file=$HOME/.node-version
# if [ ! -f $node_version_file ]; then
# 	cp $home_skel/.node-version $node_version_file
# 	# bug on this step, run commands manually after this script is finished.
# 	# fnm install
# fi

# ###################
# # install lazyvim #
# ###################
# nvim_dir=$HOME/.config/nvim
# if [ ! -d $nvim_dir ]; then
# 	git clone https://github.com/LazyVim/starter $nvim_dir
# 	rm -rf $nvim_dir/.git
# fi
# cp $home_skel/.config/nvim/init.lua $nvim_dir/init.lua
# cp $home_skel/.config/nvim/lua/config/lazy.lua $nvim_dir/lua/config/lazy.lua
# cp $home_skel/.config/nvim/lua/plugins/* $nvim_dir/lua/plugins/

# #####################
# # config fish-shell #
# #####################
# omf_home=$HOME/.local/share/omf
# if [ ! -d $omf_home ]; then
# 	# install oh-my-fish
# 	curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
# 	# install plugins
# 	omf install bang-bang
# 	omf install clearance
# fi
# # copy config
# cp $home_skel/.config/fish/functions/* $HOME/.config/fish/functions/
# cp $home_skel/.config/fish/config.fish $HOME/.config/fish/
# cp $home_skel/.config/fish/fish_variables $HOME/.config/fish/

# ####################
# # config alacritty #
# ####################
# alacritty_home=$HOME/.config/alacritty
# if [ ! -d $alacritty_home ]; then
# 	mkdir -p $alacritty_home/themes
# 	git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
# fi
# cp $home_skel/.config/alacritty/alacritty.yml $alacritty_home/alacritty.yml



# #########################
# # paste utility scripts #
# #########################
# sudo cp $etc_skel/$usr_bin/* $usr_bin/

# #############
# # setup vpn #
# #############
# # setup Opsta vpn
# vpn_home=$HOME/vpn
# cp -r $home_skel/vpn $vpn_home
# # setup PTT vpn
# vpn_ptt_venv=$HOME/.vpn-ptt-venv
# if [ ! -d $vpn_ptt_venv ]; then
# 	python3 -m venv $vpn_ptt_venv
# 	source "$vpn_ptt_venv/bin/activate"
# 	pip3 install -r $vpn_home/vpn-ptt-requirements.txt
# 	deactivate
# fi

# ######################
# # install kube stack #
# ######################
# if [ ! -f $usr_bin/kubectl ]; then
# 	# install kubectl
# 	curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
# 	chmod +x kubectl
# 	sudo mv kubectl $usr_bin/
# fi

# if [ ! -f $usr_bin/kubectx ]; then
# 	# install kubectx
# 	sudo git clone https://github.com/ahmetb/kubectx $HOME/.kubectx
# 	sudo ln -s $HOME/.kubectx/kubectx $usr_bin/kubectx
# 	sudo ln -s $HOME/.kubectx/kubens $usr_bin/kubens
# fi

# if [ ! -f $usr_bin/helm ]; then
# 	# install helm
# 	curl -LO https://get.helm.sh/helm-v3.13.2-linux-amd64.tar.gz
# 	tar xf helm-*
# 	chmod +x linux-amd64/helm
# 	sudo mv linux-amd64/helm $usr_bin/
# 	rm -rf linux-amd64 helm-*
# fi

# if [ ! -f $usr_bin/minikube ]; then
# 	# install minikube
# 	curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
# 	sudo install minikube-linux-amd64 $usr_bin/minikube
# 	rm -rvf minikube-linux-amd64
# fi

# ################
# # disable beep #
# ################
# if [ ! -f /etc/systemd/system/disable-pcspkr.service ]; then
# 	sudo cp $etc_skel/etc/systemd/system/disable-pcspkr.service /etc/systemd/system/disable-pcspkr.service
# 	sudo systemctl enable --now disable-pcspkr.service
# fi

# ###################
# # install postman #
# ###################
# postman_home=$HOME/.Postman
# if [ ! -d $postman_home ]; then
# 	wget https://dl.pstmn.io/download/latest/linux_64
# 	tar xf linux_64
# 	rm -rf linux_64
# 	mv Postman $postman_home
# 	sudo ln -sf $postman_home/Postman /usr/local/bin/postman
# fi

# ##################
# # config zathura #
# ##################
# zathura_home=$HOME/.config/zathura
# if [ ! -d $zathura_home ]; then
# 	mkdir $zathura_home
# 	cp $home_skel/.config/zathura/zathurarc $zathura_home/zathurarc
# fi

# echo "Manual run -- fnm install"
