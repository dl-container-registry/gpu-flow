# [gpu_flow](https://github.com/uob-epic/gpu_flow) container

## Details

* CUDA 8.0
* OpenCV 2.4.13.4 built from `opencv2-cuda8` container.
* Qt5

## Usage

```
$ docker run --runtime=nvidia --rm -t willprice/gpu_flow -h

Usage: /src/gpu_flow_build/compute_flow [options]
Avaible options:
  -f, --type=[1]                flow method
  -g, --gpuID=[1]               gpu ID
  -h, --help=[true]             print help message
  -i, --in_dir                  input directory of videos
  -j, --frame_root_dir=[frames] path to directory to store jpegs
  -o, --flow_root_dir=[flow]    path to directory to store flow
  -s, --skip=[1]                frame skip
  -v, --start_video=[1]         start video ID

$ docker run --runtime=nvidia --rm -t willprice/gpu_flow \
    --gpuID=0 \
    --in_dir=$HOME/input_videos \
    --frame_root_dir=$HOME/output/frames \
    --flow_root_dir=$HOME/output/flow
