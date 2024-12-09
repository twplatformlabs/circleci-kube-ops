#!/usr/bin/env bats

@test "bats version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge bats -v"
  [[ "${output}" =~ "1.11" ]]
}

@test "kubectl version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge kubectl version --client=true"
  [[ "${output}" =~ "1.31" ]]
}

@test "helm version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge helm version --short=true"
  [[ "${output}" =~ "3.16" ]]
}

@test "argocd version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge argocd version --short=true"
  [[ "${output}" =~ "2.13" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge awspec --version"
  [[ "${output}" =~ "1.30" ]]
}

@test "kind version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge kind version"
  [[ "${output}" =~ "0.25" ]]
}

@test "flux version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge flux --version"
  [[ "${output}" =~ "2.4" ]]
}

@test "checkov version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge checkov -v"
  [[ "${output}" =~ "3.2" ]]
}

@test "px version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge px version"
  [[ "${output}" =~ "0." ]]
}

@test "circlepipe version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge circlepipe version"
  [[ "${output}" =~ "0.3" ]]
}

@test "istioctl version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge istioctl version --remote=false"
  [[ "${output}" =~ "1.24" ]]
}
