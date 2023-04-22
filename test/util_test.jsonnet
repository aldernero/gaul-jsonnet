local gaul = import '../main.libsonnet';
local test = import 'github.com/jsonnet-libs/testonnet/main.libsonnet';

test.new(std.thisFile)

+ test.case.new(
  name='Lerp basic',
  test=test.expect.eq(
    actual=gaul.util.lerp(0, 100, 0.5),
    expected=50,
  )
)
