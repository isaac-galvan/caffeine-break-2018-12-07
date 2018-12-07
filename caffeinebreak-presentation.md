# caffeine break:

## nagios plugins dev w/ docker

Dec 7, 2018

made with [reveal-md](https://github.com/webpro/reveal-md)

---

## Your presenter today

Isaac J. Galvan

Service manager with Technology Services

igalvan@illinois.edu

---

## The Scene

* monitoring vendor status page for service status
* having to scrape the html and surf the DOM
* pretty fragile
* vendor moved status and it broke

---

## The new status page

[Statuspage](https://www.statuspage.io) by Atlassian is cloud status and metrics reporting.

* new Box [status](https://status.box.com)
* json [api](https://status.box.com/api/v2)
* used by many [higher ed and enterprise](https://www.atlassian.com/blog/statuspage/statuspage-examples-25-status-pages-showcasing-excellent-customization-design-incident-communication)
* `download-demo-status.sh`

---

## Dev Environment

* portable and easy > [docker](https://training.play-with-docker.com/alacart/)
* doesn't get much easier than docker-compose
* check [docker hub](https://hub.docker.com/r/jasonrivers/nagios/) for an image you like

```bash
git clone git@github.com:techservicesillinois/nagios-cloudservices.git
cd nagios-cloudservices
docker-compose -f docker-compose.yaml -f docker-compose.dev.yaml up -d && docker-compose logs -f
```


... and vioala! 

containerized [Nagios](http://localhost:8080)

---

## The Statuspage plugin

[isaac-galvan/nagios-plugins-statuspage](https://github.com/isaac-galvan/nagios-plugins-statuspage) on Github



---

## ...and while i'm here

* i'm looking at your, alerts!
* who wants more email?!
* nagios config is already so fragile

[teams.microsoft.com](https://teams.microsoft.com)  or Teams app

team code: ieg2r96

---

## How does this sound?

* users can self subscribe to alerts
* push notification to desktop or mobile
* discuss alerts from anywhere

[teams.microsoft.com](https://teams.microsoft.com)  or Teams app

team code: ieg2r96

---

## Send Alerts to Teams

1. make a **Status Alerts** channel
2. configure incoming webhook
3. configure nagios to send to team

users can join/leave teams and subscribe to channels for push

[teams.microsoft.com](https://teams.microsoft.com)  or Teams app

team code: ieg2r96
