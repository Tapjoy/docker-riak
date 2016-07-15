docker-riak
-----------

This is an **extremely** barebones MVP effort to get a Riak KV install running in Docker. The intended purpose (at the moment) is to provide a Riak KV service dependency when developing projects that use Riak KV. The running container provides the standard `protobuf` and `http` endpoints.

### Usage

Put this in your project's `docker-compose.yml` and link it where necessary. e.g. pseudoconfig:

```yaml
version: '2'

services:

  project:
    links:
      - riak
    environment:
      - RIAK_PROTOBUF=riak:8087
      - RIAK_HTTP=riak:8098
      
    riak:
      image: tapjoy/riak
```
