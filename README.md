# mdl-action

![Linting](https://github.com/bewuethr/yamllint-action/workflows/Linting/badge.svg)
![Move release tags](https://github.com/bewuethr/yamllint-action/workflows/Move%20release%20tags/badge.svg)

This action runs the YAML linter [yamllint] on every YAML file in the
repository.

  [yamllint]: https://github.com/adrienverge/yamllint

## Inputs

### `config-file`

**Optional** The path to the configuration file for `yamllint` to use. See
[Configuration] to learn about yamllint config files, and [Rules] for the
individual rules.

  [Configuration]: https://yamllint.readthedocs.io/en/stable/configuration.html
  [Rules]: https://yamllint.readthedocs.io/en/stable/rules.html

## Example usage

```yml
uses: 'bewuethr/yamllint-action@v1'
with:
  config-file: '.github/workflows/yamllintconfig'
```

An example config file might look like this:

```yaml
extends: default

rules:
  document-start: disable
  truthy: disable
```

## Versions

To get the latest version of a major release, the major release without minor
and patch release can be used.

To get the latest version of a minor release, the minor release without the
patch release can be used.

For example: if the latest release is `v1.1.2`,

```yaml
uses: 'bewuethr/yamllint-action@v1'
```

and

```yaml
uses: 'bewuethr/yamllint-action@v1.1'
```

and

```yaml
uses: 'bewuethr/yamllint-action@v1.1.2'
```

will fetch `v1.1.2`. The advantage of using just `@v1` is that minor releases
and patches are included without requiring a change; the advantage of using
`@v1.1.2` is knowing that the action does 100% the same thing every time.

This is done via the [release-tag-tracker] action.

  [releasee-tag-tracker]: https://github.com/marketplace/actions/release-tag-tracker
