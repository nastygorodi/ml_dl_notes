FROM fedora:36

RUN dnf install -yv texlive-collection-basic    \
    'tex(everysel.sty)'                         \
    'tex(fontawesome.sty)'                      \
    'tex(roboto.sty)'                           \
    'tex(sourcesanspro.sty)'                    \
    'tex(tcolorbox.sty)'                        \
    'tex(parskip.sty)'

WORKDIR /build

COPY . .

ENTRYPOINT ["bash", "build/build.sh"]
