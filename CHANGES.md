## 12-19-2021 automated release note generation

CHANGES.md deprecated. See release notes and Dockerfile for specific versions and configuration.  

## 12-6-2021 Initial Packages in circleci-kube-ops 0.3.0

FROM twdps/circleci-base-image:alpine-3.1.4^  

| package         | version      |
|-----------------|--------------|
| curl            | 7.80.0-r0^   |
| wget            | 1.21.2-r2^   |
| docker          | 20.10.11-r0^ |
| nodejs          | 16.13.1-r0^  |
| jq              | 1.6-r1^      |
| kubectl         | 1.22.4^      |
| istioctl        | 1.12.0^      |
| helm            | 3.7.1^       |
| sonobuoy        | 0.55.1^      |
| bats            | 1.5.0^       |

FROM twdps/circleci-base-image:slim-3.1.4^  

| package         | version      |
|-----------------|--------------|
| curl            | 7.79.1-2^    |
| wget            | 1.21.2-2+b1^ |
| docker          | 20.10.7-r1   |
| nodejs          | 14.18.2^     |
| jq              | 1.6-2.1^     |
| kubectl         | 1.22.4^      |
| istioctl        | 1.12.0^      |
| helm            | 3.7.1^       |
| sonobuoy        | 0.55.1^      |
| bats            | 1.5.0^       |

## 09-16-2021 Initial Packages in circleci-kube-ops 0.2.0

FROM twdps/circleci-base-image:alpine-3.1.3

| package         | version      |
|-----------------|--------------|
| curl            | 7.79.1-r0^   |
| wget            | 1.21.1-r1    |
| docker          | 20.10.9-r0^  |
| nodejs          | 14.17.6-r0   |
| jq              | 1.6_rc1-r1   |
| kubectl         | 1.22.1       |
| istioctl        | 1.11.2       |
| helm            | 3.6.3        |
| sonobuoy        | 0.53.2       |
| bats            | 1.4.1        |

FROM twdps/circleci-base-image:slim-3.1.3  

https://snyk.io/vuln/SNYK-DEBIANUNSTABLE-WGET-1277613  
https://snyk.io/vuln/SNYK-DEBIANUNSTABLE-PYTHON39-1085112  
https://snyk.io/vuln/SNYK-DEBIANUNSTABLE-PYTHON39-1290157  

| package         | version      |
|-----------------|--------------|
| curl            | 7.78.0-r0    |
| wget            | 1.21.1-r1    |
| docker          | 20.10.7-r1   |
| nodejs          | 14.17.6-r0   |
| jq              | 1.6_rc1-r1   |
| kubectl         | 1.22.1       |
| istioctl        | 1.11.2       |
| helm            | 3.6.3        |
| sonobuoy        | 0.53.2       |
| bats            | 1.4.1        |

## 09-16-2021 Initial Packages in circleci-kube-ops 0.2.0

^changes  

FROM twdps/circleci-base-image:alpine-3.1.3^  

| package         | version      |
|-----------------|--------------|
| curl            | 7.79.0-r0^   |
| wget            | 1.21.1-r1    |
| docker          | 20.10.7-r2^  |
| nodejs          | 14.17.6-r0   |
| jq              | 1.6_rc1-r1   |
| kubectl         | 1.22.1       |
| istioctl        | 1.11.2       |
| helm            | 3.6.3        |
| sonobuoy        | 0.53.2       |
| bats            | 1.4.1        |

FROM twdps/circleci-base-image:slim-3.1.3^  

https://snyk.io/vuln/SNYK-DEBIANUNSTABLE-WGET-1277613  
https://snyk.io/vuln/SNYK-DEBIANUNSTABLE-PYTHON39-1085112  
https://snyk.io/vuln/SNYK-DEBIANUNSTABLE-PYTHON39-1290157  

| package         | version      |
|-----------------|--------------|
| curl            | 7.78.0-r0    |
| wget            | 1.21.1-r1    |
| docker          | 20.10.7-r1   |
| nodejs          | 14.17.6-r0   |
| jq              | 1.6_rc1-r1   |
| kubectl         | 1.22.1       |
| istioctl        | 1.11.2       |
| helm            | 3.6.3        |
| sonobuoy        | 0.53.2       |
| bats            | 1.4.1        |


## 09-05-2021 Initial Packages in circleci-kube-ops 0.1.0

FROM twdps/circleci-base-image:alpine-3.1.2

| package         | version      |
|-----------------|--------------|
| curl            | 7.78.0-r0    |
| wget            | 1.21.1-r1    |
| docker          | 20.10.7-r1   |
| nodejs          | 14.17.6-r0   |
| jq              | 1.6_rc1-r1   |
| kubectl         | 1.22.1       |
| istioctl        | 1.11.2       |
| helm            | 3.6.3        |
| sonobuoy        | 0.53.2       |
| bats            | 1.4.1        |

FROM twdps/circleci-base-image:slim-3.1.2

| package         | version      |
|-----------------|--------------|
| curl            | 7.78.0-r0    |
| wget            | 1.21.1-r1    |
| docker          | 20.10.7-r1   |
| nodejs          | 14.17.6-r0   |
| jq              | 1.6_rc1-r1   |
| kubectl         | 1.22.1       |
| istioctl        | 1.11.2       |
| helm            | 3.6.3        |
| sonobuoy        | 0.53.2       |
| bats            | 1.4.1        |
