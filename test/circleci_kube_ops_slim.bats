#!/usr/bin/env bats

@test "bats version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge bats -v"
  [[ "${output}" =~ "1.10" ]]
}

@test "kubectl version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge kubectl version --short=true --client=true"
  [[ "${output}" =~ "1.28" ]]
}

@test "helm version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge helm version --short=true"
  [[ "${output}" =~ "3.12" ]]
}

@test "sonobuoy version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge sonobuoy version --short=true"
  [[ "${output}" =~ "0.56" ]]
}

@test "argocd version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge argocd version --short=true"
  [[ "${output}" =~ "2.8" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge awspec --version"
  [[ "${output}" =~ "1.29" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge inspec --version"
  [[ "${output}" =~ "5.22" ]]
}

@test "kind version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge kind version"
  [[ "${output}" =~ "0.20.0" ]]
}

@test "flux version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge flux version"
  [[ "${output}" =~ "2.1" ]]
}

@test "checkov version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge checkov -v"
  [[ "${output}" =~ "2.4" ]]
}

@test "px version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge px version"
  [[ "${output}" =~ "0.8.2" ]]
}

@test "circlepipe version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge circlepipe version"
  [[ "${output}" =~ "0.2" ]]
}
