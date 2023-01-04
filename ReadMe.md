# <img src="https://cdn.jsdelivr.net/gh/brogers5/chocolatey-package-rweverything.portable@a17d2d8f04410806c68a9ff8e032d7df79faed72/rweverything.portable.png" width="48" height="48"/> Chocolatey Package: [RWEverything (Portable)](https://community.chocolatey.org/packages/rweverything.portable/)
[![Chocolatey package version](https://img.shields.io/chocolatey/v/rweverything.portable.svg)](https://community.chocolatey.org/packages/rweverything.portable/)
[![Chocolatey package download count](https://img.shields.io/chocolatey/dt/rweverything.portable.svg)](https://community.chocolatey.org/packages/rweverything.portable/)

---

This package is part of a family of packages published for RWEverything. This repository is for the portable package.
* For the meta package, see [chocolatey-package-rweverything](https://github.com/brogers5/chocolatey-package-rweverything).
* For the installer package, see [chocolatey-package-rweverything.install](https://github.com/brogers5/chocolatey-package-rweverything.install).

See the [Chocolatey FAQs](https://docs.chocolatey.org/en-us/faqs) for more information on [meta packages](https://docs.chocolatey.org/en-us/faqs#what-is-the-difference-between-packages-no-suffix-as-compared-to.install.portable) and [installer/portable packages](https://docs.chocolatey.org/en-us/faqs#what-distinction-does-chocolatey-make-between-an-installable-and-a-portable-application).

---

## Install
[Install Chocolatey](https://chocolatey.org/install), and run the following command to install the latest approved version on the Chocolatey Community Repository:
```shell
choco install rweverything.portable
```

Alternatively, the packages as published on the Chocolatey Community Repository will also be mirrored on this repository's [Releases page](https://github.com/brogers5/chocolatey-package-rweverything.portable/releases). The `nupkg` can be installed from the current directory as follows:

```shell
choco install rweverything.portable -s .
```

## Build
[Install Chocolatey](https://chocolatey.org/install), clone this repository, and run the following command in the cloned repository:
```shell
choco pack
```

A successful build will create `rweverything.portable.x.y.nupkg`, where `x.y` should be the Nuspec's `version` value at build time.

Note that Chocolatey package builds are non-deterministic. Consequently, an independently built package will fail a checksum validation against officially published packages.

## Update
This package should be automatically updated by the [Chocolatey Automatic Package Updater Module](https://github.com/majkinetor/au). If it is outdated by more than a few days, please [open an issue](https://github.com/brogers5/chocolatey-package-rweverything.portable/issues).

AU expects the parent directory that contains this repository to share a name with the Nuspec (`rweverything.portable`). Your local repository should therefore be cloned accordingly:
```shell
git clone git@github.com:brogers5/chocolatey-package-rweverything.portable.git rweverything.portable
```

Alternatively, a junction point can be created that points to the local repository (preferably within a repository adopting the [AU packages template](https://github.com/majkinetor/au-packages-template)):
```shell
mklink /J rweverything.portable ..\chocolatey-package-rweverything.portable
```

Once created, simply run `update.ps1` from within the created directory/junction point. Assuming all goes well, all relevant files should change to reflect the latest version available. This will also build a new package version using the modified files.

Before submitting a pull request, please [test the package](https://docs.chocolatey.org/en-us/community-repository/moderation/package-verifier#steps-for-each-package) using the [Chocolatey Testing Environment](https://github.com/chocolatey-community/chocolatey-test-environment) first.