https://medium.com/techtofreedom/5-ways-to-write-loops-in-bash-b20d162c466e

# Loop examples

```sh
for i in 1 2 3 4 5
do
   echo "Welcome $i times"
done
```

```sh
#!/usr/bin/env bash
number=1
while [ $number -le 10 ]
do
 echo $number
 number=$((number+1))
done
```

# Variables
```sh
file=abc
$file  # use value
${file}  # to make modifications

# Example
file=tmp
echo "$file/abc"
tmpabc
```
