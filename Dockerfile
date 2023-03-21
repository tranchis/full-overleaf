FROM sharelatex/sharelatex:3.5.4

WORKDIR /tmp
RUN wget https://mirror.ctan.org/systems/texlive/tlnet/update-tlmgr-latest.sh && bash update-tlmgr-latest.sh -- --upgrade
RUN tlmgr update --self --all
RUN tlmgr install scheme-full
WORKDIR /overleaf

ENTRYPOINT ["/sbin/my_init"]

