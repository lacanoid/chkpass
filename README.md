# chkpass

PostgreSQL versions lower than 11 come bundled with chkpass extension for storing encrtypted passwords.
This was removed from Postgres 11 and later. This is a stand alone version for use with those.

See [documentaion for chkpass](https://www.postgresql.org/docs/10/chkpass.html).

Installation
------------

Install appropriate Postgres server development package

    apt-get install postgresql-server-dev-11

To build and install this module:

    make
    make install
    make install installcheck

or selecting a specific PostgreSQL installation:

    make PG_CONFIG=/some/where/bin/pg_config
    make PG_CONFIG=/some/where/bin/pg_config install
    make PG_CONFIG=/some/where/bin/pg_config installcheck
    make PGPORT=5432 PG_CONFIG=/usr/lib/postgresql/11/bin/pg_config clean install installcheck

Make sure you set the connection parameters like PGPORT right for testing.

And finally inside the database:

    CREATE EXTENSION chkpass;

