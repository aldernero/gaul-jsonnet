local gaul = import '../main.libsonnet';
local test = import 'github.com/jsonnet-libs/testonnet/main.libsonnet';

local tau = 6.283185307179586;

test.new(std.thisFile)

+ test.case.new(
  name='Lerp basic',
  test=test.expect.eq(
    actual=gaul.util.lerp(0, 100, 0.5),
    expected=50,
  )
)

+ test.case.new(
  name='Lerp typical',
  test=test.expect.eq(
    actual=gaul.util.lerp(72, 108, 0.25),
    expected=81,
  )
)

+ test.case.new(
  name='Map basic',
  test=test.expect.eq(
    actual=gaul.util.map(0, 1, 0, 100, 0.7),
    expected=70,
  )
)

+ test.case.new(
  name='Map typical',
  test=test.expect.eq(
    actual=gaul.util.map(-1, 1, 400, 100, 0.3),
    expected=205,
  )
)

+ test.case.new(
  name='GCD relatively prime',
  test=test.expect.eq(
    actual=gaul.util.gcd(17, 21),
    expected=1,
  )
)

+ test.case.new(
  name='GCD highly composite',
  test=test.expect.eq(
    actual=gaul.util.gcd(60, 24),
    expected=12,
  )
)

+ test.case.new(
  name='GCD non-integer',
  test=test.expect.eq(
    actual=gaul.util.gcd(1.2, 5),
    expected=0,
  )
)

+ test.case.new(
  name='deg2Rad',
  test=test.expect.eq(
    actual=gaul.util.deg2Rad(120),
    expected=tau / 3,
  )
)

+ test.case.new(
  name='rad2Deg',
  test=test.expect.eq(
    actual=gaul.util.rad2Deg(tau / 5),
    expected=72,
  )
)

+ test.case.new(
  name='isInt for integer',
  test=test.expect.eq(
    actual=gaul.util.isInt(7),
    expected=true,
  )
)

+ test.case.new(
  name='isInt for non-integer',
  test=test.expect.eq(
    actual=gaul.util.isInt(tau),
    expected=false,
  )
)
