<div align="center">
	<p>
		<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/twplatformlabs/static/master/psk_banner.png" width=800 />
	</p>
  <h1>twdps/circleci-kube-ops</h1>
  <h3>PSK CircleCI Convenience Images</h3>
  <a href="https://app.circleci.com/pipelines/github/twplatformlabs/circleci-kube-ops"><img src="https://circleci.com/gh/twplatformlabs/circleci-kube-ops.svg?style=shield"></a> <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/twplatformlabs/circleci-kube-ops"></a>
</div>
<br />

Common tools and packages used in pipelines managing kubernetes. Works in conjunction with the [twdps/kube-ops](https://github.com/twplatformlabs/orb-kube-ops) orb.  

Packages included on kube-ops executor, but can override version with orb commands:  
- kubectl
- kind
- helm
- npm: bats
- sonobuoy
- gem: awspec
- argocd
- flux
- checkov
- trivy

Packages that must be specified using the kube-ops/packages command (not on executor):  
- istioctl

Capabilities provided by orb using remote image at runtime:  
- kube-bench

Packages available on the executor, can not be overridden using orb:
- python3
- ruby
- nodejs
- npm
- pip: awscli
- pip: jq
- gem: json

_Review the build and CVE scan logs in the release artifacts for specific packages versions and known vulnerabilities (if any)._  

### Tagging Scheme

This image has the following tagging scheme:

```
twdps/circleci-base-image:-<YYYY.MM>
twdps/circleci-base-image:-stable
twdps/circleci-base-image:-edge
```

`<YYYY.MM>` - Release version of the image, referred to by the 4 digit year, dot, and a 2 digit month. For example `2025.04` would be the monthly tag from April 2025. This image is generated monthly, based on the then current release of the base image and related packages and provides a predictable fixed point for use in an executor Dockerfile. Review the build log in the pipeline artifacts for the specific image and package versions. Occasionally there will be interim patches released and you may see `2025.04.1` or addtional numbered versions.  

`stable` - generic tag that always points to the latest, monthly release image. Typically used by other recurring builds and not recommended for pipeline usage. Pin pipelines to specific month-tagged builds.  

`edge` - is the latest development of the Base image. Built from the `HEAD` of the `main` branch. Intended to be used as a testing version of the image with the most recent changes.   

See the psk [circleci-remote-docker](https://github.com/twplatformlabs/circleci-remote-docker) image repository for details image signing and sbom verification used by all twdps PSK executor images.  