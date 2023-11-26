FROM fedora:37

RUN dnf install -yv texlive-collection-basic    \
    'tex(everysel.sty)'                         \
    'tex(fontawesome.sty)'                      \
    'tex(roboto.sty)'                           \
    'tex(sourcesanspro.sty)'                    \
    'tex(tcolorbox.sty)'                        \
    'tex(parskip.sty)'                          \
    'tex(beamer.cls)'                           \
    'tex(luainputenc.sty)'

WORKDIR /build/ml1

COPY . .

ENTRYPOINT ["bash", "build/ml1/build_ml1.sh"]
