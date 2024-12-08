#!/usr/bin/env bats

@test "node version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge kubectl node -v"
  [[ "${output}" =~ "20.16" ]]
}

@test "npm version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge kubectl npm -v"
  [[ "${output}" =~ "9.2" ]]
}

@test "ruby version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge kubectl ruby -v"
  [[ "${output}" =~ "3.3" ]]
}

@test "python version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge kubectl python -V"
  [[ "${output}" =~ "3.12" ]]
}

@test "kubectl version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge kubectl version --client=true"
  [[ "${output}" =~ "1.31" ]]
}

@test "helm version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge helm version --short=true"
  [[ "${output}" =~ "3.16" ]]
}

@test "aws-clibats version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge aws --version"
  [[ "${output}" =~ "aws-cli/1.36" ]]
}

@test "istioctl version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge istioctl version --remote=false"
  [[ "${output}" =~ "1.24" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge bats -v"
  [[ "${output}" =~ "1.11" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge awspec --version"
  [[ "${output}" =~ "1.30" ]]
}

@test "argocd version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge argocd version --short=true"
  [[ "${output}" =~ "2.13" ]]
}

@test "flux version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge flux --version"
  [[ "${output}" =~ "2.4" ]]
}

@test "kind version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge kind version"
  [[ "${output}" =~ "0.25" ]]
}

@test "checkov version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge checkov -v"
  [[ "${output}" =~ "3.2" ]]
}

@test "trivy version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge trivy -v"
  [[ "${output}" =~ "0.58" ]]
}

@test "circlepipe version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge circlepipe version"
  [[ "${output}" =~ "0.3" ]]
}

@test "px version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge px version"
  [[ "${output}" =~ "0.8" ]]
}
