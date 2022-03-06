# nuke-the-url
An easy-to-use tool with JMeter under the hood that allows to stress a web service from CLI

## Compile from sources
 - Make sure you have Docker installed
 - Clone the repository
 - run `docker build -t nuke-the-url .` from repository root

## Installing from Docker Hub
TBD

## Usage
Execute `docker run -e url=http://url_to_nuke.ru -e usr=500 -e dur=30 -ti --rm nuke-the-url` where:
 - `url` - url to be stressed
 - `usr` - number of threads (concurrent users)
 - `dur` - duration in seconds
