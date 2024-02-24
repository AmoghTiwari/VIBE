# My README

# Installattion
## Ignored but important files:
- `$ROOT/data`
- `$ROOT/output`

# Errors
## Exception: pyglet 2.0.9 requires Python 3.8 or newer.
```Traceback (most recent call last):
  File "demo.py", line 33, in <module>
    from lib.utils.renderer import Renderer
  File "/data/amogh/projects/VIBE/lib/utils/renderer.py", line 19, in <module>
    import pyrender
  File "/data/groot/miniconda3/envs/vibe_env/lib/python3.7/site-packages/pyrender/__init__.py", line 12, in <module>
    from .viewer import Viewer
  File "/data/groot/miniconda3/envs/vibe_env/lib/python3.7/site-packages/pyrender/viewer.py", line 31, in <module>
    import pyglet
  File "/data/groot/miniconda3/envs/vibe_env/lib/python3.7/site-packages/pyglet/__init__.py", line 19, in <module>
    raise Exception(f"pyglet {version} requires Python {MIN_PYTHON_VERSION_STR} or newer.")
Exception: pyglet 2.0.9 requires Python 3.8 or newer.
```

### Solution
`python -m pip uninstall pyglet && python -m pip install pyglet==1.5`

## ImportError: cannot import name 'ModelOutput' from 'smplx.utils' (/data/groot/miniconda3/envs/vibe_env/lib/python3.7/site-packages/smplx/utils.py)
```Traceback (most recent call last):
  File "demo.py", line 32, in <module>
    from lib.models.vibe import VIBE_Demo
  File "/data/amogh/projects/VIBE/lib/models/__init__.py", line 1, in <module>
    from .vibe import VIBE
  File "/data/amogh/projects/VIBE/lib/models/vibe.py", line 24, in <module>
    from lib.models.spin import Regressor, hmr
  File "/data/amogh/projects/VIBE/lib/models/spin.py", line 13, in <module>
    from lib.models.smpl import SMPL, SMPL_MODEL_DIR, H36M_TO_J14, SMPL_MEAN_PARAMS
  File "/data/amogh/projects/VIBE/lib/models/smpl.py", line 8, in <module>
    from smplx.utils import ModelOutput, SMPLOutput
ImportError: cannot import name 'ModelOutput' from 'smplx.utils' (/data/groot/miniconda3/envs/vibe_env/lib/python3.7/site-packages/smplx/utils.py)
```

### Solution
- Go to `lib/models/smpl.py`
- Replace `from smplx.utils import ModelOutput, SMPLOutput` with `from smplx.body_models import ModelOutput as SMPLOutput`
- If you still get an error after the above change, try: `python -m pip uninstall smplx && python -m pip install smplx==0.1.13`

## TypeError: Descriptors cannot not be created directly.
```Traceback (most recent call last):
  File "train.py", line 25, in <module>
    from torch.utils.tensorboard import SummaryWriter
  File "/data/groot/miniconda3/envs/vibe_env/lib/python3.7/site-packages/torch/utils/tensorboard/__init__.py", line 2, in <module>
    from tensorboard.summary.writer.record_writer import RecordWriter  # noqa F401
  File "/data/groot/miniconda3/envs/vibe_env/lib/python3.7/site-packages/tensorboard/summary/__init__.py", line 25, in <module>
    from tensorboard.summary import v1
  File "/data/groot/miniconda3/envs/vibe_env/lib/python3.7/site-packages/tensorboard/summary/v1.py", line 24, in <module>
    from tensorboard.plugins.audio import summary as _audio_summary
  File "/data/groot/miniconda3/envs/vibe_env/lib/python3.7/site-packages/tensorboard/plugins/audio/summary.py", line 36, in <module>
    from tensorboard.plugins.audio import metadata
  File "/data/groot/miniconda3/envs/vibe_env/lib/python3.7/site-packages/tensorboard/plugins/audio/metadata.py", line 21, in <module>
    from tensorboard.compat.proto import summary_pb2
  File "/data/groot/miniconda3/envs/vibe_env/lib/python3.7/site-packages/tensorboard/compat/proto/summary_pb2.py", line 16, in <module>
    from tensorboard.compat.proto import tensor_pb2 as tensorboard_dot_compat_dot_proto_dot_tensor__pb2
  File "/data/groot/miniconda3/envs/vibe_env/lib/python3.7/site-packages/tensorboard/compat/proto/tensor_pb2.py", line 16, in <module>
    from tensorboard.compat.proto import resource_handle_pb2 as tensorboard_dot_compat_dot_proto_dot_resource__handle__pb2
  File "/data/groot/miniconda3/envs/vibe_env/lib/python3.7/site-packages/tensorboard/compat/proto/resource_handle_pb2.py", line 16, in <module>
    from tensorboard.compat.proto import tensor_shape_pb2 as tensorboard_dot_compat_dot_proto_dot_tensor__shape__pb2
  File "/data/groot/miniconda3/envs/vibe_env/lib/python3.7/site-packages/tensorboard/compat/proto/tensor_shape_pb2.py", line 42, in <module>
    serialized_options=None, file=DESCRIPTOR),
  File "/data/groot/miniconda3/envs/vibe_env/lib/python3.7/site-packages/google/protobuf/descriptor.py", line 561, in __new__
    _message.Message._CheckCalledFromGeneratedFile()
TypeError: Descriptors cannot not be created directly.
If this call came from a _pb2.py file, your generated code is out of date and must be regenerated with protoc >= 3.19.0.
If you cannot immediately regenerate your protos, some other possible workarounds are:
 1. Downgrade the protobuf package to 3.20.x or lower.
 2. Set PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python (but this will use pure-Python parsing and will be much slower).

More information: https://developers.google.com/protocol-buffers/docs/news/2022-05-06#python-updates
```
### Solution
- `python -m pip uninstall protobuf && python -m pip install protobuf==3.20 `