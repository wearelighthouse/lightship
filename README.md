# Lightship

*Here lies Lightbox*

1. [Prerequisites](#1-prerequisites)
2. [Installation](#installation)
3. [Usage](#usage)
4. [Examples](#examples)

## 1. Prerequisites

We are moving over to [Docker](https://www.docker.com/) but still with a sprinkling of [VirtualBox](https://www.virtualbox.org/).
Docker will allow us to easily define the server requirements of each project alongside the code and VirtualBox is enabling us to do
this without any major performance loss.

### Docker

[Docker Toolbox](https://github.com/docker/toolbox/releases) - Its basically all the things you need (Dockerwize)!

N.B. Get the most recent non pre-release!

### Homebrew

Homebrew is "The missing package manager for macOS", pretty much it lets you easily install packages similar to `apt-get` on linux.

Run the following command to install it:

`[ ! -f "`which brew`" ] && /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

## 2. Installation

Clone this repository somewhere:

`git clone https://github.com/wearelighthouse/lightship.git`

**Then from within the created directory run:**

`make install`

## 3. Usage and Gotyas

Once this is installed you can start using Docker as your dev environment.
If a project has a `docker-composer.yml` file it means its ready to be used with Docker, start the site by running:

`docker-compose up -d`

Then when you're finished working on that site don't forget to run:

`docker-compose down`

We will try to include a `Makefile` with each project so see the projects `README.md` for more information on running that site with Docker.

### Gotyas

* You can only have one project up at one time - Docker exposes port 80 from the `nginx` container to VirtualBox, only one thing can be on a port at one time.
* The VirtualBox's IP is `192.168.99.100`, this is where you will see your site - You can double check this by running `docker-machine ip` in your terminal - You can use this IP as the proxy when using Browsersync.
* The installation should of installed a LaunchAgent to make sure the VirtualBox is started on startup. You can check it is running by running `docker-machine ls` in your terminal and looking for a machine called `default`. If it isn't running simply run `docker-machine start`

## 4. Examples

Here is a list of "starting" points to dockerize various types of projects.

* [Bedrock ("proper" Wordpress development)](bedrock/)
* [CakePHP](cakephp/)
* [Wordpress (theme development)](wordpress/)
