FROM willprice/opencv2-cuda8 
RUN apt-get update && \
    apt-get install -y git qtbase5-dev

RUN mkdir -p /src
WORKDIR /src
RUN git clone https://github.com/uob-epic/gpu_flow.git
RUN mkdir gpu_flow_build && cd gpu_flow_build && \
    cmake \
        -D OpenCV_DIR=/usr/local/share/OpenCV \
        ../gpu_flow && \
    make -j $(nproc)
ENTRYPOINT ["/src/gpu_flow_build/compute_flow"]
