FROM sharelatex/sharelatex:2.5.1

RUN tlmgr update --self
RUN tlmgr install scheme-full

ENTRYPOINT ["/sbin/my_init"]

