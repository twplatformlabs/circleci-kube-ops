<div align="center">
	<p>
		<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/thoughtworks_flamingo_wave.png?sanitize=true" width=200 />
    <br />
		<img alt="DPS Title" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/dps_lab_title.png?sanitize=true" width=350/>
	</p>
  <h3>DPS Convenience Images</h3>
  <h1>twdps/circleci-kube-ops</h1>
  <a href="https://app.circleci.com/pipelines/github/ThoughtWorks-DPS/circleci-kube-ops"><img src="https://circleci.com/gh/ThoughtWorks-DPS/circleci-kube-ops.svg?style=shield"></a> <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/ThoughtWorks-DPS/circleci-kube-ops"></a>
</div>
<br />

Common tools and packages used in pipelines managing kubernetes. Works in conjunction with the twdps orb-kube-ops.  

Packages included on kube-ops executor, but can override version with orb commands:   
- kubectl
- helm
- bats
- sonobuoy
- inspec
- awspec
- argocd

Packages that must be specified using the orb-kube-ops/packages command (not on executor):  
- istioctl

Capabilities provided by orb using remote image at runtime:  
- kube-bench

Packages available on the executor, can not be overridden using orb: 
- curl
- wget
- python3
- ruby 
- nodejs
- awscli
- jq
- gem: json

See release notes and Dockerfile for details and version information.  
