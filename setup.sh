#!/usr/bin/env bash
sudo apt-get install --fix-missing
sudo apt-get install

sudo apt-get install git -y
sudo apt-get install omxplayer -y
sudo apt-get install screen -y
sudo apt-get install vim -y
sudo apt-get install ffmpeg -y

# remove the raspberry pi logo on the top left and hide the console output
sudo sed -i '/\bconsoleblank=1 logo.nologo\b/! s/$/ consoleblank=1 logo.nologo/' /boot/cmdline.txt

# remove the rainbow splash screen
sudo grep -q '^disable_splash=1$' /boot/config.txt || echo 'disable_splash=1' | sudo tee -a /boot/config.txt >/dev/null

# set 256MB memory for gpu
sudo grep -q '^gpu_mem=512$' /boot/config.txt || echo 'gpu_mem=512' | sudo tee -a /boot/config.txt >/dev/null
sudo grep -q '^disable_overscan=1$' /boot/config.txt || echo 'disable_overscan=1' | sudo tee -a /boot/config.txt >/dev/null

# comment this line out
sudo sed -i '/dtoverlay=vc4-fkms-v3d/s/^/#/' /boot/config.txt


chmod +x *.sh
sudo cp grid-view.sh /usr/local/bin/grid-view
sudo cp one-stream.sh /usr/local/bin/one-stream
sudo cp cycle-streams.sh /usr/local/bin/cycle-streams

sudo cp rtsp-viewer.service /etc/systemd/system/

# enable and start these services
sudo systemctl daemon-reload

sudo systemctl enable rtsp-viewer.service
sudo systemctl start rtsp-viewer.service
sudo systemctl status rtsp-viewer.service