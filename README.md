<div align="center">
	<p>
		<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/twplatformlabs/static/master/thoughtworks_flamingo_wave.png?sanitize=true" width=200 />
    <br />
		<img alt="DPS Title" src="https://raw.githubusercontent.com/twplatformlabs/static/master/EMPCPlatformStarterKitsImage.png?sanitize=true" width=350/>
	</p>
  <h3>PSK Convenience Images</h3>
  <h1>twdps/circleci-kube-ops</h1>
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

See release notes and Dockerfile for details and version information.  
