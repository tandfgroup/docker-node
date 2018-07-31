# Contributing

> Thank you for contributing. Contributions are always welcome, no matter how large or small.

## Table of Contents

- [Guidelines](#guidelines)
- [Pull Requests](#pull-requests)
- [Clone the Repository](#clone-repo)
- [Install Dependencies](#install-dependencies)
- [File Structure](#file-structure)

---

## Guidelines <a id="guidelines"></a>

As a contributor, here are the guidelines we would like you to follow:

- [Code of conduct](https://github.com/tandfgroup/engineering/blob/master/CODE_OF_CONDUCT.md)
- [How can I contribute?](https://github.com/tandfgroup/engineering/blob/master/CONTRIBUTING.md#how-can-i-contribute)
- [Using the issue tracker](https://github.com/tandfgroup/engineering/blob/master/CONTRIBUTING.md#using-the-issue-tracker)
- [Submitting a Pull Request](https://github.com/tandfgroup/engineering/blob/master/CONTRIBUTING.md#submitting-a-pull-request)
- [Coding rules](https://github.com/tandfgroup/engineering/blob/master/CONTRIBUTING.md#coding-rules)
- [Working with code](https://github.com/tandfgroup/engineering/blob/master/CONTRIBUTING.md#working-with-code)

We also recommend to read [How to Contribute to Open Source](https://opensource.guide/how-to-contribute).

---

## Pull Requests <a id="pull-requests"></a>

Thank you for contributing.

- Create your branch from `master`.
- Ensure your [git commit messages follow the required format](https://github.com/tandfgroup/engineering/blob/master/STYLE_GUIDES.md#git-commit-messages).
- Ensure your scripts are well-formed, well-documented and object-oriented.
- Ensure your scripts are stateless and can be reused by all.
- Update your branch, and resolve any conflicts, before making pull request.
- Fill in [the required template](https://github.com/tandfgroup/engineering/blob/master/PULL_REQUEST_TEMPLATE.md).
- Do not include issue numbers in the PR title.
- Include screenshots and animated GIFs in your pull request whenever possible.
- Follow the [style guide](https://github.com/tandfgroup/engineering/blob/master/STYLE_GUIDES.md) [applicable to the language](https://github.com/tandfgroup/engineering/blob/master/STYLE_GUIDES.md#languages) or task.
- Include thoughtfully-worded, well-structured tests/specs. See the [Tests/Specs Style Guide](https://github.com/tandfgroup/engineering/blob/master/STYLE_GUIDES.md#tests).
- Document new code based on the [Documentation Style Guide](https://github.com/tandfgroup/engineering/blob/master/STYLE_GUIDES.md#documentation).
- End all files with a newline.

---

## Clone the Repository <a id="clone-repo"></a>

```bash
git clone https://github.com/tandfgroup/docker-node.git docker-node && cd docker-node
```

## Install Dependencies <a id="install-dependencies"></a>

```bash
# TBD
```

---

## File Structure <a id="file-structure"></a>

```text
docker-node/
├─ <#>/                                      * directory for each Nodejs version
|   ├─ <#>/                                  * directory for Alpine Linux
|   │   └─ Dockerfile                        * Docker configuration template for Alpine Linux
|   ├─ architectures                         * System architectures used for testing environments
│   └─ Dockerfile                            * Docker configuration template
│
├─ .travis.yml                               * Travis CI configuration file
├─ architectures                             * System architectures used for testing environments
├─ Dockerfile-alpine.template                * Docker configuration template for Alpine Linux
├─ Dockerfile.template                       * Docker configuration template
├─ functions.sh                              * Shell-scripting utility functions
├─ generate-stackbrew-library.sh             * Shell-scripting to generate stackbrew libraries
└─ test-build.sh                             * Shell-scripting to test build for all images
```

---

#### Happy coding!
