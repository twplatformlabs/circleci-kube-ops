#!/usr/bin/env bats

@test "bats version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge bats -v"
  [[ "${output}" =~ "1.7.0" ]]
}

@test "kubectl version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge kubectl version --short=true --client=true"
  [[ "${output}" =~ "1.24.3" ]]
}

@test "helm version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge helm version --short=true"
  [[ "${output}" =~ "3.9.3" ]]
}

@test "sonobuoy version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge sonobuoy version --short=true"
  [[ "${output}" =~ "0.56.6" ]]
}

@test "argocd version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge argocd version --short=true"
  [[ "${output}" =~ "2.4.10" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge awspec --version"
  [[ "${output}" =~ "1.28.0" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge inspec --version"
  [[ "${output}" =~ "5.18.14" ]]
}

@test "datadog cli version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge dog --version"
  [[ "${output}" =~ "0.44.0" ]]
}

@test "kind version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge kind version"
  [[ "${output}" =~ "0.14.0" ]]
}