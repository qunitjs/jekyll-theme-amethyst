# Contributing

## Publish releases

1. Edit the [gemspec](./amethyst.gemspec) file and bump `spec.version`.
2. Commit to Git with message `Tag vX.Y.Z`, and push to main branch.
3. Tag commit as `vX.Y.Z` and push tag.

CI will create the package and upload it to rubygems.org.

## Update vendored dependencies

* typesense-minibar

See also [Makefile](./Makefile).

```sh
make deps
```
