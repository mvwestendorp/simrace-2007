FROM gitpod/workspace-full

RUN brew install R
RUN go env -w CC=gcc CXX="g++"
RUN R -q -e "renv::restore(prompt=F)"
