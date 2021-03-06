# Docker cmakelint
[![License](http://img.shields.io/:license-apache-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0.html)
[![Build Status](https://travis-ci.org/saschpe/docker-cmakelint.svg?branch=master)](https://travis-ci.org/saschpe/docker-cmakelint)
[![Docker Pulls](https://img.shields.io/docker/pulls/saschpe/cmakelint.svg)](https://hub.docker.com/r/saschpe/cmakelint/)
[![Docker Build Status](https://img.shields.io/docker/build/saschpe/cmakelint.svg)](https://hub.docker.com/r/saschpe/cmakelint/)

[cmakelint](https://github.com/richq/cmake-lint) Docker container based on Alpine Linux.


## Usage
Invoke the container just like *cmakelint* ifself:

    docker run --rm saschpe/cmakelint --help

Assuming you want to format all CMake files in a directory
*src*, a full example might look like this:

    cmake_files=$(find . \( -name CMakeLists.txt -o -name *.cmake \) -exec echo /opt/{} \;)
    docker run \
        --rm \
        --privileged=true \
        --volume ${PWD}:/opt \
        saschpe/cmakelint ${cmake_files}

Just put this into a script for easier invocation.


## Scripts
These scripts simplify various tasks related to container building and
publishing.

    .
    └─── scripts
        ├── docker
        │   ├── build           Build the container locally
        │   └── run             Run the container locally
        ├── inc.constants
        └── inc.functions


## License

    Copyright 2017 Sascha Peilicke

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
