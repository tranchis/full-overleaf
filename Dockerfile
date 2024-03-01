FROM sharelatex/sharelatex:4.2.3

WORKDIR /tmp
RUN wget https://mirror.ctan.org/systems/texlive/tlnet/update-tlmgr-latest.sh && bash update-tlmgr-latest.sh
RUN tlmgr update --self --all
RUN tlmgr install scheme-full || true
RUN tlmgr install scheme-full || true
RUN tlmgr path add
WORKDIR /overleaf

ENTRYPOINT ["/sbin/my_init"]

