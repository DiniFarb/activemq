# Activemq
[Dockerfiles](https://github.com/DiniFarb/activemq) for [ActiveMQ](https://activemq.apache.org/components/classic/download/) classic above v5.16.0

## Run 

```bash
docker run -it -p 1883:1883 -p 8161:8161 dinifarb/activemq:5.18.3
```

## Available tags
||
|------|
|```dinifarb/activemq:5.16.0```|
|```dinifarb/activemq:5.16.1```|
|```dinifarb/activemq:5.16.2```|
|```dinifarb/activemq:5.16.3```|
|```dinifarb/activemq:5.16.4```|
|```dinifarb/activemq:5.16.5```|
|```dinifarb/activemq:5.16.6```|
|```dinifarb/activemq:5.16.7```|
|```dinifarb/activemq:5.17.0```|
|```dinifarb/activemq:5.17.1```|
|```dinifarb/activemq:5.17.2```|
|```dinifarb/activemq:5.17.3```|
|```dinifarb/activemq:5.17.4```|
|```dinifarb/activemq:5.17.5```|
|```dinifarb/activemq:5.17.6```|
|```dinifarb/activemq:5.18.0```|
|```dinifarb/activemq:5.18.1```|
|```dinifarb/activemq:5.18.2```|
|```dinifarb/activemq:5.18.3```|
|```dinifarb/activemq:6.0.0```| **not yet working**
|```dinifarb/activemq:6.0.1```| **not yet working**

## Ports

The following ports are exposed and can be bound:

| Port  | Description |
|:------|:------------|
| 8161  | WebInterface  |
| 1883  | MQTT        |
| 5672  | AMPQ        |
| 61614 | WS          |
| 61613 | STOMP       |
| 61616 | OpenWire    |

