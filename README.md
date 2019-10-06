# ForkOAAS

0.1.9

ForkOAAS (Fork Off As A Service) - FOAAS for forks sake.
   Provides a modern, RESTful, scalable solution to the common problem of telling people to fork off.
   Forked with only the tiniest of forks given for supporting it.

See http://foaas.com for the slightly less forked parent project: FOAAS.

# Installation

	npm install

# Run

	npm start

# Test

	npm test

# Clients

Sorry, there are no forking clients. Here are links to FOAAS clients though! Maybe they work?

API clients are available in a number of languages:

| Language | Name           | Info |
|:---------|:---------------|:-----|
| JS/Node  | `foaas-client` | https://www.npmjs.org/package/foaas-client |
| Ruby     | `foaas-client` | https://github.com/petedmarsh/foaas-client |
| PHP      | `foaas-php`    | https://github.com/klaude/foaas-php |
| Python   | `foaas-python` | https://github.com/dmpayton/foaas-python |
| R        | `rfoaas`       | https://github.com/eddelbuettel/rfoaas |
| CLI/bash | `foaas.sh`     | https://github.com/RaymiiOrg/foaas.sh |
| .NET     | `FOAASClient`  | https://github.com/igorkulman/FOAASClient |
| Java     | `JFOAAS`       | https://github.com/AnUnknownMiner/FOAAS-Java |
| Go       | `go-fuck-off`   | https://godoc.org/github.com/ds0nt/go-fuck-off |

# Integrate FOAAS

No work has been done to integrate ForkOAAS. 

The parent project FOAAS is on the following platforms.

| Platform/Software | Name                                                                         |
|:------------------|:-----------------------------------------------------------------------------|
| Hubot				| https://github.com/github/hubot-scripts/blob/master/src/scripts/FOAAS.coffee |
| Thunderbird/Seamonkey | https://addons.mozilla.org/en-US/seamonkey/addon/qfo-quick-fuck-off |
| TelegramBot | https://github.com/rajanand02/TelegramFoaasBot |

# Contributing

Please consider contributing to the parent FOAAS project.

## Adding new operations

To add a new FOAAS operation:

1. Fork into your account
2. Branch into a feature branch `feature/your_operation`
3. See the operation files in `/lib/operations`.
4. Add specs, using `/spec/operations` as examples. We won't be merging operations without working specs.
5. Push to your fork and submit a PR.

For the time being, in your PR, please include relevant documentation in `public/index.html`.

All contributions are very welcome.
