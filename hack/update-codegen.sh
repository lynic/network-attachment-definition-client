#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

SCRIPT_ROOT=$(dirname ${BASH_SOURCE})/..

bash vendor/k8s.io/code-generator/generate-groups.sh all \
  github.com/lynic/network-attachment-definition-client/pkg/client github.com/lynic/network-attachment-definition-client/pkg/apis \
  k8s.cni.cncf.io:v1 \
  --go-header-file ${SCRIPT_ROOT}/hack/custom-boilerplate.go.txt
