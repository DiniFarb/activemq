# Activemq
[Dockerfiles](https://github.com/DiniFarb/activemq) for [ActiveMQ](https://activemq.apache.org/components/classic/download/) classic above v5.16.4

## Run 

```bash
docker run -it -p 1883:1883 -p 8161:8161 dinifarb/activemq:5.17.2
```

## Available tags
||
|------|
|```dinifarb/activemq:5.16.4```|
|```dinifarb/activemq:5.16.5```|
|```dinifarb/activemq:5.17.0```|
|```dinifarb/activemq:5.17.1```|
|```dinifarb/activemq:5.17.2```|

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

