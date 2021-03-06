# page_object_pattern_demo

[![Build Status](https://travis-ci.org/RustyNail/page_object_pattern_demo.svg?branch=master)](https://travis-ci.org/RustyNail/page_object_pattern_demo)

Made a sample of page object pattern test using some library.

## Test Contents

#### Test site
http://example.selenium.jp/reserveApp_Renewal

#### Test Pages
Reservation form page
![Reservation form page](./images/reservation_page.png)

Reservation comfirm page
![Reservation comfirm page](./images/reservation_confirm_page.png)

Reservation confirm error page
![Reservation confirm error page](./images/reservation_confirm_error_page.png)

Reservation completed page
![Reservation completed page](./images/reservation_completed.png)

#### Library to be used for testing
- [RSpec](https://github.com/rspec/rspec)
- [Capyabara](https://github.com/teamcapybara/capybara)
- [selenium-webdriver](https://github.com/SeleniumHQ/selenium/tree/master/rb)
- [SitePrism](https://github.com/natritmeyer/site_prism)

## Prepare

```bash
# Installing Docker Engine (http://docs.docker.jp/engine/installation/linux/ubuntulinux.html)
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce
sudo gpasswd -a $(whoami) docker

# Installing Docker Compose (http://docs.docker.jp/compose/install.html)
sudo curl -L -o /usr/local/bin/docker-compose $(curl -sI https://github.com/docker/compose/releases/latest | sed -n "/^Location:/{s/^.* //;s#/tag/#/download/#;s#\\r\$#/docker-compose-$(uname -s)-$(uname -m)#;p;}")
sudo chmod +x /usr/local/bin/docker-compose
sudo curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/bash/docker-compose -o /usr/share/bash-completion/completions/docker-compose
```

## Build & Test

```bash
git clone git@github.com:RustyNail/page_object_pattern_demo.git
cd page_object_pattern_demo

docker-compose build
docker-compose run --rm test
```
## Run Rubocop

```bash
docker-compose run --rm test bundle ex rubocop
```
