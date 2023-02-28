# nuke-the-url
![Made by Ukrainian](https://img.shields.io/static/v1?label=Made%20by&message=Ukrainian&labelColor=1f5fb2&color=fad247&style=flat)

An easy-to-use tool with JMeter under the hood that allows to stress a web service from CLI

## Compile from sources
 - Make sure you have Docker installed
 - Clone the repository
 - run `docker build -t nuke-the-url .` from repository root

## Installing from Docker Hub
`docker pull flodek/nuke-the-url`

## Usage
Execute `docker run -e url=http://url_to_nuke.ru -e usr=500 -e dur=30 -ti --rm nuke-the-url` where:
 - `url` - url to be stressed
 - `usr` - number of threads (concurrent users)
 - `dur` - duration in seconds

## Example
```
PS C:\git\nuke-the-url> docker run -e url=http://www.don-kazak.ru/ -e usr=2 -e dur=60 -ti --rm nuke-the-url       
Nuking http://www.don-kazak.ru/ with 2 users for 60 sec
Mar 06, 2022 9:49:02 PM java.util.prefs.FileSystemPreferences$1 run
INFO: Created user preferences directory.
Creating summariser <summary>
Created the tree successfully using nuke-the-url.jmx
Starting standalone test @ Sun Mar 06 21:49:02 GMT 2022 (1646603342509)
Waiting for possible Shutdown/StopTestNow/HeapDump/ThreadDump message on port 4445
Warning: Nashorn engine is planned to be removed from a future JDK release
summary +      1 in 00:00:01 =    0.8/s Avg:  1187 Min:  1187 Max:  1187 Err:     0 (0.00%) Active: 2 Started: 2 Finished: 0
summary +     50 in 00:00:26 =    1.9/s Avg:  1055 Min:   884 Max:  1239 Err:     0 (0.00%) Active: 2 Started: 2 Finished: 0
summary =     51 in 00:00:28 =    1.9/s Avg:  1058 Min:   884 Max:  1239 Err:     0 (0.00%)
summary +     58 in 00:00:30 =    1.9/s Avg:  1037 Min:   844 Max:  1218 Err:     0 (0.00%) Active: 2 Started: 2 Finished: 0
summary =    109 in 00:00:58 =    1.9/s Avg:  1047 Min:   844 Max:  1239 Err:     0 (0.00%)
summary +      7 in 00:00:03 =    2.0/s Avg:  1090 Min:  1012 Max:  1191 Err:     0 (0.00%) Active: 0 Started: 2 Finished: 2
summary =    116 in 00:01:01 =    1.9/s Avg:  1049 Min:   844 Max:  1239 Err:     0 (0.00%)
Tidying up ...    @ Sun Mar 06 21:50:03 GMT 2022 (1646603403679)
... end of run
```
