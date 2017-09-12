# Installing Coffeescript & Node.js
This document will walk-through installing [Coffeescript](http://coffeescript.org/#top) on Windows & Linux. 

## Windows
First things first, you are going to need [Node.js](). Coffeescript does not depend on Node.js, and can be run in any JavaScript environment, or in the browser (see [Try CoffeeScript](http://coffeescript.org/#try)). 
* Goto [Node.js](https://nodejs.org/en/), [download](https://nodejs.org/dist/v6.11.3/node-v6.11.3-x64.msi) and install

Now that you have Node.js you can use **npm** to install coffeescript.  
Locally:
* `npm install coffeescript`

Globally:
* `npm install -g coffeescript`

## Linux
With linux, its pretty simple like always. 
* `sudo apt-get update`
* `sudo apt-get install nodejs`
* `sudo apt-get install npm`
* *global:*`sudo npm install -g coffeescript` or *local:*`sudo npm install coffeescript`


### Script
*Ubuntu 16^*
```shell
#/bin/shell

sudo apt-get update
sudo apt-get install nodejs
sudo apt-get install npm
sudo npm install -g coffeescript
```
*Use PPA*
```shell
#/bin/sh

#For the older LTS (the 4.x branch), use:
# curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -

#For the currently active release (the 7.x branch), use:
# curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -

#For the most recent LTS (the 6.x branch), use:
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

sudo apt-get install nodejs
sudo apt-get install build-essential
sudo npm install -g coffeescript
```