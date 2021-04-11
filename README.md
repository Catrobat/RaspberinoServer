Planned work by 4-3is4-me
Update readme - install instructions and installer do not work, broken links. DONE
Change 1 : Update spelling error in installer script.DONE
Change 2 : Have installer change file permissions and add to /etc/rc0.d. DONE
Change 3 : Create new installer for server to be run as needed from cli rather than running from start up.

Prefered options but uncertain if achievable.
Option 1 : Use BCM pins.
OPtion 2 : Make use of all GPIO - currently only works 1-26, believe this is app side not pi side.

# RaspberryPiServer

Use low-cost **Raspberry Pi** computers as a receiver for special commands from [Pocket Code](http://www.catrobat.org). 

The aim of this sub-project is to allow Pocket Code to control a RaspberryPi remotely in order to  enable children and novices to acquire knowledge and arouse interest in both programming and electronics. Features of the RaspberryPi can be accessed without having to write code on a RaspberryPi - all important features are accessible via special bricks within Pocket Code.
## Installation
Instructions for installing and using a Raspberry Pi with Pocket Code can be cound at [catrob.at/RaspberryPi](https://catrob.at/RaspberryPi). But in a nutshell:

1. Download installer
``wget http://catrob.at/installraspberino -O install-raspberino.sh``
2. run installer as root
`` sudo sh install-raspberino.sh``

# License #
[License](http://developer.catrobat.org/licenses) of our project (mainly AGPL v3).

