# prime

[![badge-pubdev]][pub.dev]
[![badge-repo]][repo]
![github-stars][]

![badge-platforms][]
[![badge-language]][dart.dev]
[![badge-license]][license]

[![badge-sponsors]][cerebral-gardens]
[![badge-githubsponsors]][github-davewoodcom]
[![badge-patreon]][patreon-davewoodx]

[![badge-mastodon]][mastodon-davewoodx]
[![badge-twitter]][twitter-davewoodx]
[![badge-twitter-gizmosdev]][twitter-gizmosdev]

A library of useful, reusable, methods and extensions for Dart.


## Installation

To use this package, add `prime` as a [dependency in your pubspec.yaml file](https://dart.dev/guides/packages).

```yaml
dependencies:
  prime: any
```


## Import the library

```dart
import 'package:prime/prime.dart';
```


## Usage

TODO: add info here


## Check dependencies

You can check for missing, under-promoted, over-promoted, and unused dependencies using the `dependency_validator` package.

```shell
dart run dependency_validator
```

You can upgrade dependencies with the following commands:

```shell
dart pub upgrade
dart pub outdated
dart pub upgrade --major-versions
```

The steps required will depend on details provided by those commands.


## Linting

If using VS Code, it should keep your Dart files nicely formatted automatically. If you're not using VS Code, you can ensure the code formatted correctly using the command:

```shell
dart format . -l 240
```

We also use [`yamllint`](https://github.com/adrienverge/yamllint) to keep our `.yaml` files neat and correct. Run the following command to view any issues with our `.yaml` files:

```shell
yamllint .
```

Our rules configuration is in the `.yamllint.yaml` file. If you run `yamllint` from a folder that doesn't have the configuration in it (or a link to it), you can specify to use our config file by executing `yamllint -c ../path/to/.yamllint.yaml`.

## Analysis

VS Code will display hints inline when the dart analyzer detects an issue with the code. You can manually run the analyzer to view all of the issues at once with the command:

```shell
dart analyze .
```

You can then fix the issues manually, or in most cases, use a built-in quick fix to correct the issue. Use the following command to see the issues that can be fixed automatically:

```shell
dart fix --dry-run .
```

And then run this command to apply those fixes if they look ok to you:

```shell
dart fix --apply .
```


## Notes

See also: [flutter_prime](https://pub.dev/packages/flutter_prime) for a Flutter enhanced version of prime.

Please send me suggestions/bug fixes.

# [![gizmosdev-logo]][gizmos.dev] gizmos.dev

<!-- Link references -->

[pub.dev]: https://pub.dev/packages/prime
[license]: https://github.com/GizmosDev/prime/blob/main/LICENSE
[repo]: https://github.com/GizmosDev/prime
[badge-repo]: https://img.shields.io/badge/GitHub-prime-blue.svg?style=flat
[badge-pubdev]: https://img.shields.io/pub/v/prime.svg?label=prime
[github-stars]: https://img.shields.io/github/stars/gizmosdev/prime?style=social

[gizmos.dev]: https://gizmos.dev/
[gizmosdev-logo]: https://gizmos.dev/images/GizmosDevLogo_32@2x.png

[dart.dev]: https://dart.dev
[cerebral-gardens]: https://www.cerebralgardens.com/
[cerebral-gardens-apps]: https://www.cerebralgardens.com/apps/

[github-davewoodcom]: https://github.com/DaveWoodCom
[mastodon-davewoodx]: https://mastodon.social/@davewoodx
[twitter-davewoodx]: https://twitter.com/davewoodx
[patreon-davewoodx]: https://www.patreon.com/DaveWoodX

[github-gizmosdev]: https://github.com/GizmosDev
[twitter-gizmosdev]: https://twitter.com/gizmosdev

[badge-language]: https://img.shields.io/badge/Dart-%3E2.18.x-orange.svg?style=flat
[badge-platforms]: https://img.shields.io/badge/Platforms-Android%20%7C%20iOS%20%7C%20Linux%20%7C%20macOS%20%7C%20Web%20%7C%20Windows-lightgray.svg?style=flat
[badge-license]: https://img.shields.io/badge/License-BSD%203--Clause-blue.svg?style=flat

[badge-githubsponsors]: https://img.shields.io/badge/GitHub-DaveWoodCom-blue.svg?style=flat
[badge-sponsors]: https://img.shields.io/badge/Sponsors-Cerebral%20Gardens-orange.svg?style=flat
[badge-mastodon]: https://img.shields.io/mastodon/follow/000415670?domain=https%3A%2F%2Fmastodon.social&style=social
[badge-twitter]: https://img.shields.io/twitter/follow/DaveWoodX.svg?style=social
[badge-twitter-gizmosdev]: https://img.shields.io/twitter/follow/GizmosDev.svg?style=social
[badge-patreon]: https://img.shields.io/badge/Patreon-DaveWoodX-F96854.svg?style=flat
