# Docker setup for Bedrock Wordpress development

Dump these files in the root of your project.

Create `.env` file from [`.env.example`](.env.example) and fill in appropriately. You must also make sure that the `.env` file you just created is added to the projects `.gitignore`.

**N.B.** The `host` for your database is `db` not `localhost`.

### Usage

There is a [`Makefile`](Makefile) included with various commands for ease of use:

#### Starting Docker

`make up`

#### Stopping Docker

`make down`

**N.B.** This must be done when switching between sites.

#### Updating Docker

`make pull`

**N.B.** This only needs to be done when an image is updated.

#### Installing dependencies

`make install`

You should add any other installation scripts to this command, for example `npm install`. Currently this will just install any `PHP` dependencies.

#### Running composer commands

`make composer CMD="require vendor/package"`

**N.B.** You must pass a `CMD` when using `make composer`

#### Interactive bash shell

`make bash`

Sometimes you just need to have a poke around in the container!

There is also a [`Makefile`](theme/Makefile) for and operations required for the theme. This should be placed in the base of your theme.
