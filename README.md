# camera-preset-service-docker

Containerized version of the [camera-preset-service](https://github.com/ThomPatterson/camera-preset-service) application.  

Set the `CONFIG` ENV to the following JSON object, using your own values of course:

```
{"CAMERA_ADDRESS":"192.168.0.1","ONVIF_PORT":80,"ONVIF_USER":"admin","ONVIF_PASS":"123456","ONVIF_SERVICE_PATH":""}
```

Set the `TZ` ENV to the time zone you are in.  [Full list of time zones](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones)

Port 8080 is exposed from the container.
