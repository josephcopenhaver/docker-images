FROM debian:9.6-slim

MAINTAINER joseph.copenhaver@gmail.com

RUN echo 'First apt-get upgrade ran on `date +%s`=1547959363' \
 && export DEBIAN_FRONTEND=noninteractive \
 && apt-get update \
 && apt-get install bash \
 && apt-get upgrade -y

COPY ./provisioners/scripts/01_basic_linux_packages /tmp/01_basic_linux_packages
RUN /tmp/01_basic_linux_packages \
 && rm /tmp/01_basic_linux_packages \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/02_install_provision_functions /tmp/02_install_provision_functions
RUN /tmp/02_install_provision_functions \
 && rm /tmp/02_install_provision_functions \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/03_base_python_runtime /tmp/03_base_python_runtime
RUN /tmp/03_base_python_runtime \
 && rm /tmp/03_base_python_runtime \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/04_install_rcode_rmate /tmp/04_install_rcode_rmate
RUN /tmp/04_install_rcode_rmate \
 && rm /tmp/04_install_rcode_rmate \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/05_install_vagrant_support /tmp/05_install_vagrant_support
RUN /tmp/05_install_vagrant_support \
 && rm /tmp/05_install_vagrant_support \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/06_configure_python_version_manager /tmp/06_configure_python_version_manager
RUN /tmp/06_configure_python_version_manager \
 && rm /tmp/06_configure_python_version_manager \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/07_install_go_version_manager /tmp/07_install_go_version_manager
RUN /tmp/07_install_go_version_manager \
 && rm /tmp/07_install_go_version_manager \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/08_install_node_version_manager /tmp/08_install_node_version_manager
RUN /tmp/08_install_node_version_manager \
 && rm /tmp/08_install_node_version_manager \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/09_install_yarn_npm_package /tmp/09_install_yarn_npm_package
RUN /tmp/09_install_yarn_npm_package \
 && rm /tmp/09_install_yarn_npm_package \
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

COPY ./provisioners/scripts/15_install_crystal_version_manager /tmp/15_install_crystal_version_manager
RUN /tmp/15_install_crystal_version_manager \
 && rm /tmp/15_install_crystal_version_manager \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/16_install_java_version_manager /tmp/16_install_java_version_manager
RUN /tmp/16_install_java_version_manager \
 && rm /tmp/16_install_java_version_manager \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/17_install_google_chrome /tmp/17_install_google_chrome
RUN /tmp/17_install_google_chrome \
 && rm /tmp/17_install_google_chrome \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/18_install_mysql_client /tmp/18_install_mysql_client
RUN /tmp/18_install_mysql_client \
 && rm /tmp/18_install_mysql_client \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/98_install_circleci_cli /tmp/98_install_circleci_cli
RUN /tmp/98_install_circleci_cli \
 && rm /tmp/98_install_circleci_cli \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/99_install_docker /tmp/99_install_docker
RUN /tmp/99_install_docker \
 && rm /tmp/99_install_docker \
 && rm -rf /var/lib/apt/lists/*

STOPSIGNAL SIGRTMIN+3

ENTRYPOINT [ "/sbin/init" ]
