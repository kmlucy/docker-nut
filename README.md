# docker-nut

Run
```
docker run -d \
  --name=nut \
  -v /opt/nut:/etc/nut:ro \
  -p 3493:3493 \
  ghcr.io/kmlucy/docker-nut
```

Based on [NUT](https://networkupstools.org/)
