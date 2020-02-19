FROM sharelatex/sharelatex:2.2.0

RUN tlmgr update --self
RUN tlmgr install scheme-full

ENTRYPOINT ["/sbin/my_init"]
