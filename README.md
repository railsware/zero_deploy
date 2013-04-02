# Zero Deploy
[![Build Status](https://travis-ci.org/railsware/zero_deploy.png)](https://travis-ci.org/railsware/zero_deploy)

Significantly improves typical deployment speed.

## Purpose

Are you tired of waiting for git to checkout your code?
Fed up with sluggish assets precompilation?
Don't want to waste your time while waiting for bundler to install shitload of gems?

Zero Deploy gem aimed to solve all these problems. It significantly improves all the stages of typical deploy process.

Tested for Capistrano and Chef, Heroku support is in Beta.

## Installation

    gem install zero_deploy

## Usage

    zero_deploy cap production deploy
