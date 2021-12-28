FROM sharelatex/sharelatex:3.0.1

RUN tlmgr update --self
RUN tlmgr install scheme-full

ENTRYPOINT ["/sbin/my_init"]

