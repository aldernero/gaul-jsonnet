local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

{
  '#': d.pkg(
    name='gaul-jsonnet',
    url='github.com/aldernero/gaul-jsonnet/main.libsonnet',
    help=|||
      `gaul-jsonnet` is a collection of jsonnet libraries aimed at generative art.

      This package is the jsonnet equivalent of the gaul Go library, although there is not feature parity.
    |||,
  ),

  util: (import './util.libsonnet'),
}
