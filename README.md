<div align="center">
	<p>
		<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/thoughtworks_flamingo_wave.png?sanitize=true" width=200 />
    <br />
		<img alt="DPS Title" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/dps_lab_title.png?sanitize=true" width=350/>
	</p>
  <h3>DPS Convenience Images</h3>
  <h1>twdps/circleci-infra-aws</h1>
  <a href="https://app.circleci.com/pipelines/github/ThoughtWorks-DPS/circleci-kube-ops"><img src="https://circleci.com/gh/ThoughtWorks-DPS/circleci-kube-ops.svg?style=shield"></a> <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/ThoughtWorks-DPS/circleci-kube-ops"></a>
</div>
<br />

Common tools and packages used in pipelines managing kubernetes.  

Primary packages include:  
- kubectl # on executor, but can override
- istioctl # needs to be version specific
- helm # on executor, but can override
- kustomize  # on executor, but can override
- kube-bench # nothing to install?
- bats
- sonobuoy # on executor, but can override
- inspec # use dockerized version
- docker # on executor

See CHANGES.md for details and version information.  
