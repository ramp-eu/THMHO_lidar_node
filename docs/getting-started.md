## Setting up the Lidar publisher node
### Conguration files
- The configuration files are located in `/src/firos_lidar_brinup/config/`.
- Setup the `config.json`. Here server is the `firos` node and `context_broker` is responsible of transforming ROS messages to the NGSIv2 and interfacing the ROS world with non-ROS world via the OCB.
    ```json
    {
        "environment": "local",
        "local": {
            "server": {
                "port": 10100
            },
            "contextbroker": {
                "address": "localhost",
                "port": 1026
            }
        }
    }
    ```
- The config file `topics.json` defines the topic that needs to be interfaced with OCB. The message type and topic names are defined here. The `publisher` and `subscriber` terminology is at the non-ROS world. The `/scan` and `/tf` are being subscribed by the OCB or in other words these topics are published to the OCB.

    ```json
    {
        "/scan": ["sensor_msgs/LaserScan", "subscriber"],
        "/tf": ["tf2_msgs/TFMessage", "subscriber"]
    }
    ```
- As the name suggests, the `whitelist.json` functions as a whitelist to let FIROS know which messages it should keep track of. Given an environment where already ROS-Applications are running, FIROS will not automatically subscribe to all available topics if no whitelist.json is given. In a small ROS-World with few ROS-Applications, it can be desirable to subscribe to all topics.
    ```json
    {}
    ```

### References
- [FIROS readthedocs](https://firos.readthedocs.io/en/latest/)
- [Swagger firos API endpoints reference](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json#/)