[![Build Status](https://travis-ci.org/devhops/docker-behat.svg)](https://travis-ci.org/devhops/docker-behat)

## docker-behat
Container of bees and hats

##  What?
Docker container that uses Debian Wheezy and then installs behat, php5, composer, git curl, and apt-utils.

## Why?
A QA Engineer wanted a method to run behat in a clean reproducible enviroment, so I created this. Therefore, you will need behat tests for your intended purpose. 

## How? 

I imagine ``docker run -it devhops/docker-behat bash`` should do it.


## Running behat

Once in, run `/home/behat/vendor/bin/behat` to launch behat. You'll need your tests and stuff, but that sounds like a dev problem to me.

