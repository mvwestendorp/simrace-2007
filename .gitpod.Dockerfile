FROM gitpod/workspace-full

RUN brew install R
RUN go env -w CC=gcc CXX="g++"
RUN R -e "renv::restore()"
