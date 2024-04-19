#!/usr/bin/env bats

@test "bats version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge bats -v"
  [[ "${output}" =~ "1.11" ]]
}

@test "kubectl version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge kubectl version --client=true"
  [[ "${output}" =~ "1.29" ]]
}

@test "helm version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge helm version --short=true"
  [[ "${output}" =~ "3.14" ]]
}

@test "sonobuoy version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge sonobuoy version --short=true"
  [[ "${output}" =~ "0.57" ]]
}

@test "argocd version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge argocd version --short=true"
  [[ "${output}" =~ "2.10" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge awspec --version"
  [[ "${output}" =~ "1.30" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge inspec --version"
  [[ "${output}" =~ "5.22" ]]
}

@test "kind version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge kind version"
  [[ "${output}" =~ "0.22.0" ]]
}

@test "flux version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge flux --version"
  [[ "${output}" =~ "2.2" ]]
}

@test "checkov version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge checkov -v"
  [[ "${output}" =~ "3.2" ]]
}

@test "px version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge px version"
  [[ "${output}" =~ "0.8" ]]
}

@test "circlepipe version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge circlepipe version"
  [[ "${output}" =~ "0.3" ]]
}
