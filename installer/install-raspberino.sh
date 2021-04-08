#
# Catroid: An on-device visual programming system for Android devices
# Copyright (C) 2010-2016 The Catrobat Team
# (<http://developer.catrobat.org/credits>)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# An additional term exception under section 7 of the GNU Affero
# General Public License, version 3, is available at
# http://developer.catrobat.org/license_additional_term
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# Welcome dialog
echo "Welcome to RaspberIno installer!"

while true; do
    read -p "Do you wish to install/update this program [y/n] " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done


# download python server
echo "downloading RaspberinoServer..."
wget https://raw.githubusercontent.com/Catrobat/RaspberinoServer/master/RaspberInoServer.py -O /usr/local/bin/RaspberInoServer.py

# configure port
mkdir -p /etc/RaspberIno
echo "port=10000" > /etc/RaspberIno/config.cfg

# download init.d script
wget https://raw.githubusercontent.com/Catrobat/RaspberinoServer/master/installer/RaspberinoServer -O /etc/init.d/RaspberInoServer
# change file permissions
sudo chmod 755 /etc/init.d/RaspberInoServer

# add to startup
update-rc.d RaspberInoServer defaults

# start now
/etc/init.d/RaspberInoServer stop # stop if running (when updated)
/etc/init.d/RaspberInoServer start
