# Docker setup for Cakephp3 development

Dump these files in the root of your project.

Create `.env` file from [`.env.example`](.env.example) and fill in appropriately, you will also need to update your `Datasources` in `app.php` to use these details. You must also make sure that the `.env` file you just created is added to the projects `.gitignore`.

**N.B.** The `host` for your database is `db` not `localhost`.

### Usage

There is a [`Makefile`](Makefile) included with various commands for ease of use, bellow are the vital commands but check the file for more uses.

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
