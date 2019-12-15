{ pkgs ? import <nixpkgs> {}
}:

with pkgs;

stdenv.mkDerivation {
  name = "lineaire_algebra_oplossingen";
  buildInputs = [ (texlive.combine {
                    inherit
                        (texlive)
                        scheme-basic
                        latexmk
                        babel-dutch
                        subfiles
                        float
                        pdfpages
                        mdwtools # footnote.sty
                        pgf # tikz.sty
                        xcolor
                        mdframed
                        l3kernel # xparse.sty
                        l3packages # xparse.sty
                        etoolbox
                        needspace
                      ;
                  })

                ];
  src = ./.;
  phases = "unpackPhase buildPhase";
  buildPhase = ''
    latexmk -pdf lineaire_algebra_oplossingen.tex
    mkdir -p $out
    cp -r lineaire_algebra_oplossingen.pdf $out/lineaire_algebra_oplossingen.pdf
  '';
}
