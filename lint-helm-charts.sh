#!/bin/sh
# see https://github.com/helm/chart-testing/blob/main/doc/ct_lint.md
docker pull quay.io/helmpack/chart-testing
docker run -it --rm --name ct --volume $(pwd):/data quay.io/helmpack/chart-testing sh -c "ct lint --all --chart-dirs /data/charts --chart-repos hazelcast=https://hazelcast-charts.s3.amazonaws.com/ --validate-maintainers=false"