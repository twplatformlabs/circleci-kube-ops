#!/usr/bin/env bats

@test "curl version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge curl --version"
  [[ "${output}" =~ "7.79.0" ]]
}

@test "wget version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge wget --version"
  [[ "${output}" =~ "1.21.1" ]]
}

@test "docker health" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge docker version"
  [[ "${output}" =~ "20.10.7" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge bats -v"
  [[ "${output}" =~ "1.4.1" ]]
}

@test "kubectl version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge kubectl version --short=true --client=true"
  [[ "${output}" =~ "1.22.1" ]]
}

@test "istioctl version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge istioctl version --short=true --remote=false"
  [[ "${output}" =~ "1.11.2" ]]
}

@test "helm version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge helm version --short=true"
  [[ "${output}" =~ "3.7.0" ]]
}

@test "sonobuoy version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge sonobuoy version --short=true"
  [[ "${output}" =~ "0.53.2" ]]
}
