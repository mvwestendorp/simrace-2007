FROM gitpod/workspace-full

RUN brew install R
RUN go env -w CC=gcc CXX="g++"
RUN R -e "install.packages('renv', ,repos = 'http://cran.us.r-project.org')"
ENV RENV_PATHS_LIBRARY renv/library
RUN R -e "renv::restore()"
