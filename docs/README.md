---
permalink: /
---

# util

```jsonnet
local util = import "github.com/aldernero/gaul-jsonnet/util.libsonnet"
```

`util` contains common functions used in generative art

## Index

* [`fn deg2Rad(angle)`](#fn-deg2rad)
* [`fn gcd(a, b)`](#fn-gcd)
* [`fn lerp(start, end, pct)`](#fn-lerp)
* [`fn map(fromStart, fromEnd, toStart, toEnd, pct)`](#fn-map)
* [`fn rad2Deg(angle)`](#fn-rad2deg)

## Fields

### fn deg2Rad

```ts
deg2Rad(angle)
```

`deg2Rad` converts an angle specified in degrees to radians

### fn gcd

```ts
gcd(a, b)
```

`gcd` calculates the greatest common divisor between two numbers

### fn lerp

```ts
lerp(start, end, pct)
```

`lerp` calculates the linear interpolation between two points a and b by i, where i is between 0 and 1.

### fn map

```ts
map(fromStart, fromEnd, toStart, toEnd, pct)
```

`map` maps a value from one linear space to another

### fn rad2Deg

```ts
rad2Deg(angle)
```

`rad2Deg` converts an angle specified in radians to degrees