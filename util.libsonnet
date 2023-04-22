local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local tau = 6.283185307179586;

{
  '#': d.pkg(
    name='util',
    url='github.com/aldernero/gaul-jsonnet/util.libsonnet',
    help='`util` contains common functions used in generative art',
  ),

  '#lerp': d.fn(
    '`lerp` calculates the linear interpolation between two points a and b by i, where i is between 0 and 1.',
    [
      d.arg('start', d.T.number),
      d.arg('end', d.T.number),
      d.arg('pct', d.T.number),
    ]
  ),
  lerp(start, end, pct)::
    start + pct * (end - start),

  '#map': d.fn(
    '`map` maps a value from one linear space to another',
    [
      d.arg('fromStart', d.T.number),
      d.arg('fromEnd', d.T.number),
      d.arg('toStart', d.T.number),
      d.arg('toEnd', d.T.number),
      d.arg('pct', d.T.number),
    ]
  ),
  map(fromStart, fromEnd, toStart, toEnd, pct)::
    self.lerp(toStart, toEnd, (pct - fromStart) / (fromEnd - fromStart)),

  '#gcd': d.fn(
    '`gcd` calculates the greatest common divisor between two numbers',
    [
      d.arg('a', d.T.number),
      d.arg('b', d.T.number),
    ]
  ),
  gcd(a, b)::
    if b == 0 then a else self.gcd(b, a % b),

  '#deg2Rad': d.fn(
    '`deg2Rad` converts an angle specified in degrees to radians',
    [
      d.arg('angle', d.T.number),
    ]
  ),
  deg2Rad(angle)::
    tau * angle / 360,

  '#rad2Deg': d.fn(
    '`rad2Deg` converts an angle specified in radians to degrees',
    [
      d.arg('angle', d.T.number),
    ]
  ),
  rad2Deg(angle)::
    360 * angle / tau,
}
