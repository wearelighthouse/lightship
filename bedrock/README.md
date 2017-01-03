# Docker setup for Wordpress theme development

Dump these files in the root of your project.

Create `.env` file from [`.env.example`](.env.example) and fill in appropriately. If you have already setup the site you will need to update `wp-config.php` yourself.

**N.B.** The `host` for your database is `db` not `localhost`.

### Usage

There is a [`Makefile`](Makefile) included with various commands for ease of use, bellow are the vital commands but check the file for more uses.

#### Starting Docker

`make up`

#### Stopping Docker

`make down`

**N.B.** This must be done when switching between sites.
