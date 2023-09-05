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

