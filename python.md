## Numbers nearly equal
```python
import math
x = 4 
y = 9
print(math.isclose(x, y, abs_tol=5))

import numpy as np

x = 4
y = 9

print(np.isclose(x, y, atol=4))
```

## Shell commands
Use `os.system()` or `subprocess`.

## Pass dict items as arguments
```python
def foo(x, y):
    print(x, y)

>>> d = {'x':1, 'y':2}
>>> foo(**d)
1 2
```

## Functools
If a function takes a function with fixed arguments but you have a function with variable arguments, use `functools.partial()`.
Ref -> https://docs.python.org/3/library/functools.html
```python
def filter(vis, denorm_pcd, norm_pcd, cls):
	print("beep")
	for i, color in enumerate(denorm_pcd.colors):
		if cls == '1':
			res = is_close(list(color), COLORS["mouse"][::-1])
			if res == True:
				print(res)
				norm_pcd.colors[i] = [0,0,0]
		elif cls == '2':
			res = is_close(list(color), COLORS["keyboard"][::-1])
			print(res)
			if res == True:
				norm_pcd.colors[i] = [0,0,0]

	vis.update_geometry(norm_pcd)
	vis.update_renderer()
	vis.poll_events()
	vis.run()
    
vis.register_key_callback(ord("O"), partial(filter, denorm_pcd=denorm_pcd, norm_pcd=norm_pcd, cls='1'))
```
## Global variable
If you want to change value of Global variable/list etc. inside a function, you need to use `global` keyword.
```python3
ZOOM = 1
...
def zoom_out(vis):
    global ZOOM
    view_ctl = vis.get_view_control()
    ZOOM += 0.03
    view_ctl.set_zoom(ZOOM)
    return False
```
