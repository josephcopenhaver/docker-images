FROM debian:12.5-slim

LABEL maintainer="joseph.copenhaver@gmail.com"

RUN echo 'First apt-get upgrade ran on `date +%s`=1711298763' \
 && export DEBIAN_FRONTEND=noninteractive \
 && apt-get update \
 && apt-get install bash \
 && apt-get upgrade -y \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/01_basic_linux_packages /tmp/01_basic_linux_packages
RUN /tmp/01_basic_linux_packages \
 && rm /tmp/01_basic_linux_packages \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/02_install_provision_functions /tmp/02_install_provision_functions
RUN /tmp/02_install_provision_functions \
 && rm /tmp/02_install_provision_functions \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/03_install_vagrant_support /tmp/03_install_vagrant_support
RUN /tmp/03_install_vagrant_support \
 && rm /tmp/03_install_vagrant_support \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/04_base_python_runtime /tmp/04_base_python_runtime
RUN /tmp/04_base_python_runtime \
 && rm /tmp/04_base_python_runtime \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/05_install_rcode_rmate /tmp/05_install_rcode_rmate
RUN /tmp/05_install_rcode_rmate \
 && rm /tmp/05_install_rcode_rmate \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/06_install_asdf /tmp/06_install_asdf
RUN /tmp/06_install_asdf \
 && rm /tmp/06_install_asdf \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/07_configure_pyenv /tmp/07_configure_pyenv
RUN /tmp/07_configure_pyenv \
 && rm /tmp/07_configure_pyenv \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/08_install_node_and_npm /tmp/08_install_node_and_npm
RUN /tmp/08_install_node_and_npm \
 && rm /tmp/08_install_node_and_npm \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/09_install_yarn /tmp/09_install_yarn
RUN /tmp/09_install_yarn \
 && rm /tmp/09_install_yarn \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/10_install_ruby /tmp/10_install_ruby
RUN /tmp/10_install_ruby \
 && rm /tmp/10_install_ruby \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/11_install_rust /tmp/11_install_rust
RUN /tmp/11_install_rust \
 && rm /tmp/11_install_rust \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/12_install_yamllint /tmp/12_install_yamllint
RUN /tmp/12_install_yamllint \
 && rm /tmp/12_install_yamllint \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/13_install_cfn_lint /tmp/13_install_cfn_lint
RUN /tmp/13_install_cfn_lint \
 && rm /tmp/13_install_cfn_lint \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/14_install_jsonlint /tmp/14_install_jsonlint
RUN /tmp/14_install_jsonlint \
 && rm /tmp/14_install_jsonlint \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/15_install_java_version_manager /tmp/15_install_java_version_manager
RUN /tmp/15_install_java_version_manager \
 && rm /tmp/15_install_java_version_manager \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/16_install_google_chrome /tmp/16_install_google_chrome
RUN /tmp/16_install_google_chrome \
 && rm /tmp/16_install_google_chrome \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/17_install_mysql_client /tmp/17_install_mysql_client
RUN /tmp/17_install_mysql_client \
 && rm /tmp/17_install_mysql_client \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/18_install_postgres_client /tmp/18_install_postgres_client
RUN /tmp/18_install_postgres_client \
 && rm /tmp/18_install_postgres_client \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/19_install_redis_cli /tmp/19_install_redis_cli
RUN /tmp/19_install_redis_cli \
 && rm /tmp/19_install_redis_cli \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/20_install_adr /tmp/20_install_adr
RUN /tmp/20_install_adr \
 && rm /tmp/20_install_adr \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/21_install_nginx /tmp/21_install_nginx
RUN /tmp/21_install_nginx \
 && rm /tmp/21_install_nginx \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/22_install_nim /tmp/22_install_nim
RUN /tmp/22_install_nim \
 && rm /tmp/22_install_nim \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/23_install_crystal_version_manager /tmp/23_install_crystal_version_manager
RUN /tmp/23_install_crystal_version_manager \
 && rm /tmp/23_install_crystal_version_manager \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/24_install_golang /tmp/24_install_golang
RUN /tmp/24_install_golang \
 && rm /tmp/24_install_golang \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/25_install_golangci_lint /tmp/25_install_golangci_lint
RUN /tmp/25_install_golangci_lint \
 && rm /tmp/25_install_golangci_lint \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/26_install_mage /tmp/26_install_mage
RUN /tmp/26_install_mage \
 && rm /tmp/26_install_mage \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/98_install_kubernetes_tools /tmp/98_install_kubernetes_tools
RUN /tmp/98_install_kubernetes_tools \
 && rm /tmp/98_install_kubernetes_tools \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/99_install_docker /tmp/99_install_docker
RUN /tmp/99_install_docker \
 && rm /tmp/99_install_docker \
 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/init" ]
