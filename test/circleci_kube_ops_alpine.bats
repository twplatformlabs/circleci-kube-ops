#!/usr/bin/env bats

@test "bats version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge bats -v"
  [[ "${output}" =~ "1.10" ]]
}

@test "kubectl version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge kubectl version --short=true --client=true"
  [[ "${output}" =~ "1.28" ]]
}

@test "helm version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge helm version --short=true"
  [[ "${output}" =~ "3.12" ]]
}

@test "sonobuoy version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge sonobuoy version --short=true"
  [[ "${output}" =~ "0.56" ]]
}

@test "argocd version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge argocd version --short=true"
  [[ "${output}" =~ "2.8" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge awspec --version"
  [[ "${output}" =~ "1.29" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge inspec --version"
  [[ "${output}" =~ "5.22" ]]
}

@test "kind version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge kind version"
  [[ "${output}" =~ "0.20.0" ]]
}

@test "flux version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge flux version"
  [[ "${output}" =~ "2.1" ]]
}

@test "checkov version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge checkov -v"
  [[ "${output}" =~ "2.4" ]]
}

@test "circlepipe version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge circlepipe version"
  [[ "${output}" =~ "0.2" ]]
}
