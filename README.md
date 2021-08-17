# Temporal Heat Map for Human Occupancy - 2D Lidar Node

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Docker badge](https://img.shields.io/docker/pulls/ramp-eu/TTE.project1.svg)](https://hub.docker.com/r/<org>/<repo>/)
<br/>

[![Documentation Status](https://readthedocs.org/projects/thmho-lidar-node/badge/?version=latest)](https://thmho-lidar-node.readthedocs.io/en/latest/?badge=latest)
[![Docker Image CI](https://github.com/ramp-eu/THMHO_lidar_node/actions/workflows/docker-image.yml/badge.svg?branch=docker)](https://github.com/ramp-eu/THMHO_lidar_node/actions/workflows/docker-image.yml)
[![Coverage Status](https://coveralls.io/repos/github/ramp-eu/TTE.project1/badge.svg?branch=master)](https://coveralls.io/github/ramp-eu/TTE.project1?branch=master)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/fce8e4a4dfe140bb9963b88aaf1a2b03)](https://www.codacy.com/gh/ramp-eu/THMHO_lidar_node/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=ramp-eu/THMHO_lidar_node&amp;utm_campaign=Badge_Grade)
[![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/5132/badge)](https://bestpractices.coreinfrastructure.org/projects/5132)


This project is part of [DIH^2](http://www.dih-squared.eu/). For more information check the RAMP Catalogue entry for the
[components](https://github.com/xxx).

| :books: [Documentation](https://THMHO_lidar_node.readthedocs.io/en/latest/) | :whale: [Docker Hub](https://hub.docker.com/r/link-to-docker) |
| --------------------------------------------- | ------------------------------------------------------------- |


## Contents

-   [Background](#background)
-   [Install](#install)
-   [Usage](#usage)
-   [API](#api)
-   [Testing](#testing)
-   [Feedback](#feedback)
-   [Contribution](#contribution)
-   [License](#license)

## Background
### Objective
The objective is to verify the creation of a heat map for the needs of the global perception of agents in the Logistics Library. This is acheived by using multiple 2D laser scanners that provide the scan data necessary to build the heatmaps. 

## Install

Information about how to install the `THMHO_lidar_node` can be found at the corresponding section of the
[Installation & Administration Guide](docs/installationguide.md).

## Usage

Information about how to use the `THMHO_lidar_node` can be found in the [User & Programmers Manual](docs/usermanual.md).

## Testing

### Physical setup testing
If there is a physical test setup available, one can follow the steps below.
1. Power on the router and make sure that the LAN is created through WiFi
2. Power on all the Lidar edge devices and the server.
3. Server side: Using the router's remote access software, check if all the edge devices are connected to the same network as server. 
4. Server side: 
5. Follow the [Usage](docs/usermanual.md) instructions to run the application on the edge device.
6. Now, your edge devices are running and publishing scan topics to the context broker(OCB). 

Once you have started up the entire system you can check the contents in the OCB. You can do this by using terminal, postman and web-browser. Web browser is most convenient way as it pretty format the json contents. replace `localhost` with the `ipaddress` of the hostmachine hosting the OCB.

- To list the content that are subscribed by the OCB
    ```
    http://localhost:1026/v2/entities
    ```
- To list the type of messages that are subscribed by the OCB
    ```
    http://localhost:1026/v2/types
    ```
- To check the status of FIROS
    ```
    http://localhost:10100

- To list the topics subscribed/published by FIROS
    ```
    http://localhost:10100/topics



### Troubleshooting
- firos fails to launch - run the orion_context_broker first before running the firos
- Nothing is subscribed/published - firos should be the last one to be started as it works by creating the snapshop of the current running system.


## Feedback

Any feedback and suggestions can be submitted by creating New issue in the Issues tab or by emailing the team. 

## Contribution

In order to contribute you will have to request to be added to the project. 

## License

The project is licensed under the [Apache-2](https://opensource.org/licenses/Apache-2.0) license.
