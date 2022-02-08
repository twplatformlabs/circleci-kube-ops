#!/usr/bin/env bats

@test "curl version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge curl --version"
  [[ "${output}" =~ "7.80.0" ]]
}

@test "wget version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge wget --version"
  [[ "${output}" =~ "1.21.2" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge bats -v"
  [[ "${output}" =~ "1.5.0" ]]
}

@test "kubectl version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge kubectl version --short=true --client=true"
  [[ "${output}" =~ "1.23.1" ]]
}

@test "helm version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge helm version --short=true"
  [[ "${output}" =~ "3.8.0" ]]
}

@test "sonobuoy version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge sonobuoy version --short=true"
  [[ "${output}" =~ "0.56.0" ]]
}

@test "argocd version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge argocd version --short=true"
  [[ "${output}" =~ "2.2.5" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge awspec --version"
  [[ "${output}" =~ "1.25.2" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge inspec --version"
  [[ "${output}" =~ "4.52.9" ]]
}
