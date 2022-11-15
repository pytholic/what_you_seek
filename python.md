## Numbers nearly equal
```python
import math
x = 4 
y = 9
print(math.isclose(x, y, abs_tol=5))
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
