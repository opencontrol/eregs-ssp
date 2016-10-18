# eRegs System Security Plan

## Pushing to Cloud Foundry
There is a simple way to pushing a non-production ready version of this to
Cloud Foundry.

Requirements:
- A Docker Hub account
  - Before running the script, run `docker login`.
- A docker hub repo for the image.
- The CloudFoundry CLI
- A CloudFoundry platform that allows for docker images to be pushed.

```
# Usage
# ./deploy-cf.sh <dockerhub repo> <app name>

# Example
$ ./deploy-cf.sh jcscottiii/ssperegs my-ssp-eregs
```

This is an experiment to render compliance documentation (as a System Security Plan) in the [eRegs](https://eregs.github.io/) platform. Follow [these instructions](docs/docker_setup.rst) to get it running.

This was repository was forked from the [ATF eRegs](https://github.com/18F/atf-eregs) as of [`9d044a2`](https://github.com/opencontrol/eregs-ssp/tree/9d044a26f5bdfc50b3a242da7e2ce0a33bc8c07c). [View the diff.](https://github.com/opencontrol/eregs-ssp/compare/9d044a26f5bdfc50b3a242da7e2ce0a33bc8c07c...master)

## Public domain

This project is in the worldwide [public domain](LICENSE.md). As stated in [CONTRIBUTING](CONTRIBUTING.md):

> This project is in the public domain within the United States, and copyright and related rights in the work worldwide are waived through the [CC0 1.0 Universal public domain dedication](https://creativecommons.org/publicdomain/zero/1.0/).
>
> All contributions to this project will be released under the CC0 dedication. By submitting a pull request, you are agreeing to comply with this waiver of copyright interest.
