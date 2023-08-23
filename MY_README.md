# My README

# Installattion
## Error - 1
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
`python -m pip uninstall pyglet`
`python -m pip install pyglet==1.5`

## Ignored necessary files
`$ROOT/data`

