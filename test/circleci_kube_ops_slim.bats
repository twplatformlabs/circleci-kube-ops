#!/usr/bin/env bats

@test "bats version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge bats -v"
  [[ "${output}" =~ "1.11" ]]
}

@test "kubectl version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge kubectl version --client=true"
  [[ "${output}" =~ "1.30" ]]
}

@test "helm version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge helm version --short=true"
  [[ "${output}" =~ "3.15" ]]
}

@test "sonobuoy version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge sonobuoy version --short=true"
  [[ "${output}" =~ "0.57" ]]
}

@test "argocd version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge argocd version --short=true"
  [[ "${output}" =~ "2.11" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge awspec --version"
  [[ "${output}" =~ "1.30" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge inspec --version"
  [[ "${output}" =~ "5.22" ]]
}

@test "kind version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge kind version"
  [[ "${output}" =~ "0.23" ]]
}

@test "flux version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge flux --version"
  [[ "${output}" =~ "2.3" ]]
}

@test "checkov version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge checkov -v"
  [[ "${output}" =~ "3.2" ]]
}

@test "px version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge px version"
  [[ "${output}" =~ "0." ]]
}

@test "circlepipe version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge circlepipe version"
  [[ "${output}" =~ "0.3" ]]
}

@test "istioctl version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge istioctl version --remote=false"
  [[ "${output}" =~ "1.22" ]]
}
