FROM gitpod/workspace-full

RUN brew install R
RUN sudo ln -s /bin/gcc /bin/gcc-5
RUN sudo ln -s /bin/g++ /bin/g++-5
RUN TEMP_DEB="$(mktemp)" && wget -O "$TEMP_DEB" 'https://github.com/quarto-dev/quarto-cli/releases/download/v1.0.37/quarto-1.0.37-linux-amd64.deb' && sudo dpkg -i "$TEMP_DEB" && rm -f "$TEMP_DEB"
RUN R -e "install.packages('renv', repos = 'http://cran.us.r-project.org')"
ENV RENV_PATHS_LIBRARY renv/library
