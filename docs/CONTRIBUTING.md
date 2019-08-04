# Contributing

When contributing to this repository, please first discuss the change you wish to make via issue, email, or any other method with the owners of this repository before making a change. This usually saves time & effort.

Please note we have a [code of conduct](./CODE_OF_CONDUCT.md), please follow it in all your interactions with the project.

## Building

Setup a development environment by:

```bash
$ git clone git@github.com:bluebudgetz/dashboard.git
$ cd ./dashboard

# Start dev server at http://localhost:3000
$ ng serve
```

To build artifacts, use:

```bash
# Development build, stored at ./dist
$ ng build

# Production build, stored at ./dist
$ ng build --prod
```

## Testing

```bash

# Run unit tests (Karma)
$ ng test

# Run end-to-end tests (Protractor)
$ ng e2e
```

## Pull Request process

Aside from the actual change in source code, please ensure your PR update any relevant tests and/or adds new tests as necessary. PRs that lower test coverage, or cause test failures, will not be accepted.

For cases where the change affects information displayed in the documentation, please ensure the PR updates the documentation as well (eg. `README.md`).

## Releasing

Create a standard GitHub tag & release.
