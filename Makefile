# contrib/chkpass/Makefile

MODULE_big = chkpass
OBJS = chkpass.o $(WIN32RES)

EXTENSION = chkpass
DATA = chkpass--1.0.sql chkpass--unpackaged--1.0.sql
PGFILEDESC = "chkpass - encrypted password data type"

SHLIB_LINK = $(filter -lcrypt, $(LIBS))

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
