# I've written this Dockerfile based on https://stackoverflow.com/a/60920684
# To build it please run
# $ docker build -t ivansorokin/ubuntu .
# $ docker push ivansorokin/ubuntu

FROM ubuntu

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install --no-install-recommends -y binutils gcc g++ g++-multilib clang cmake make ninja-build valgrind libgmp-dev libc++-dev libc++abi-dev libc6-dbg && rm -rf /var/lib/apt/lists/*
