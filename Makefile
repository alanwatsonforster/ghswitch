prefix	=	/usr/local

BINDIR	=	$(prefix)/bin

BINS	=	ghswitch

all		:	$(BINS)

install:	all
	install -d -m u=rwx,go=rx $(BINDIR)
	install -m u=rwx,go=rx $(BINS) $(BINDIR)
