<div align="center">
	<p>
    <img alt="ghcr Logo" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/ghcr.png" width=200 />
		<h2>NOTE: The ThoughtWorks EMPC CircleCI convenience images are moving from Dockerhub to the Github Container Registry. Docker is discontinuing the free Teams tier for opensource projects, so we are moving to ghcr. Prior versions will ONLY remain available on dockerhub until mid-May.</h2>
		<br />
		<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/thoughtworks_flamingo_wave.png?sanitize=true" width=200 />
    <br />
		<img alt="DPS Title" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/EMPCPlatformStarterKitsImage.png?sanitize=true" width=350/>
	</p>
  <h3>EMPC Convenience Images</h3>
  <h1>twdps/circleci-kube-ops</h1>
  <a href="https://app.circleci.com/pipelines/github/ThoughtWorks-DPS/circleci-kube-ops"><img src="https://circleci.com/gh/ThoughtWorks-DPS/circleci-kube-ops.svg?style=shield"></a> <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/ThoughtWorks-DPS/circleci-kube-ops"></a> <a href="https://keybase.io/twdps"><img src="https://img.shields.io/keybase/pgp/twdps?label=keybase&logo=keybase"></a>
</div>
<br />

Common tools and packages used in pipelines managing kubernetes. Works in conjunction with the [twdps/kube-ops](https://github.com/ThoughtWorks-DPS/orb-kube-ops) orb.  

Packages included on kube-ops executor, but can override version with orb commands:   
- kubectl
- kind
- helm
- npm: bats
- sonobuoy
- gem: inspec
- gem: awspec
- argocd

Packages that must be specified using the kube-ops/packages command (not on executor):  
- istioctl

Capabilities provided by orb using remote image at runtime:  
- kube-bench

Packages available on the executor, can not be overridden using orb: 
- docker # for using kind in operator-sdk build pipelines
- curl
- wget
- python3
- ruby 
- nodejs
- npm
- pip: awscli
- pip: jq
- gem: json

See release notes and Dockerfile for details and version information.  
