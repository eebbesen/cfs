# Setup -- last updated on 05/31/2020
* used the latest version of Modern IE Windows 64
  * initial OS build 17763.379
  * also worked after update to 17763.1217

* used Ruby+Devkit 2.6.6-1 (x64)
  * accepted all defaults

* used Python 2.7.15 from `npm install windows-build-tools`

## Windows Ruby installer https://rubyinstaller.org/downloads/
* download a Ruby+Devkit version for your Windows OS
  * accept all defaults

## Chocolatey https://chocolatey.org/install
This program will help you manage other programs you'll want to have (like Git)

## Git https://git-scm.com/doc
Git is a tool we use to do version control

As an admin in a Windows PowerShell run
```bash
choco install git
```

## Node.js https://nodejs.org/en/docs/
Node is a JavaScript library used by Rails

As an admin in a Windows PowerShell run
```bash
choco install nodejs
```

## Windows build tools
As an admin in a Windows PowerShell run
```bash
npm install --global --production windows-build-tools
```
then close window manually

As an admin in a Windows PowerShell run (note, this may take tens of minutes!)
```bash
npm config set msvs_version 2015 --global
```

## Check out project from GitHub
```bash
git clone https://github.com/eebbesen/cfs.git
```

## Local project setup
In a Windows terminal
1. `cd cfs`
1. `gem install bundler`
1. `bundle install`
1. `yarn install --check-files`
1. `bundle exec rake db:migrate`
1. `ruby bin\rails server`
1. Navigate to https://localhost:3000 in your browser
