#!/usr/bin/env bats

@test "node version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge node -v"
  [[ "${output}" =~ "20.16" ]]
}

@test "npm version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge npm -v"
  [[ "${output}" =~ "9.2" ]]
}

@test "ruby version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge ruby -v"
  [[ "${output}" =~ "3.3" ]]
}

@test "python version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge python -V"
  [[ "${output}" =~ "3.12" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge bats -v"
  [[ "${output}" =~ "1.11" ]]
}

@test "kubectl version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge kubectl version --client=true"
  [[ "${output}" =~ "1.32" ]]
}

@test "helm version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge helm version --short=true"
  [[ "${output}" =~ "3.17" ]]
}

@test "argocd version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge argocd version --short=true"
  [[ "${output}" =~ "2.14" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge awspec --version"
  [[ "${output}" =~ "1.32" ]]
}

@test "kind version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge kind version"
  [[ "${output}" =~ "0.27" ]]
}

@test "flux version" {
  run bash -c "docker exec circleci-kube-ops-ubuntu-edge flux --version"
  [[ "${output}" =~ "2.5" ]]
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
