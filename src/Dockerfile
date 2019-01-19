FROM debian:9.6-slim

MAINTAINER joseph.copenhaver@gmail.com

RUN echo 'First apt-get upgrade ran on `date +%s`=1547715141' \
 && export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get upgrade -y

COPY ./provisioners/scripts/01_basic_linux_packages.sh /tmp/01_basic_linux_packages.sh
RUN bash /tmp/01_basic_linux_packages.sh \
 && rm /tmp/01_basic_linux_packages.sh \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/02_install_provision_functions.sh /tmp/02_install_provision_functions.sh
RUN bash /tmp/02_install_provision_functions.sh \
 && rm /tmp/02_install_provision_functions.sh \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/03_base_python_runtime.sh /tmp/03_base_python_runtime.sh
RUN bash /tmp/03_base_python_runtime.sh \
 && rm /tmp/03_base_python_runtime.sh \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/04_install_rcode_rmate.sh /tmp/04_install_rcode_rmate.sh
RUN bash /tmp/04_install_rcode_rmate.sh \
 && rm /tmp/04_install_rcode_rmate.sh \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/05_install_vagrant_support.sh /tmp/05_install_vagrant_support.sh
RUN bash /tmp/05_install_vagrant_support.sh \
 && rm /tmp/05_install_vagrant_support.sh \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/06_configure_python_version_manager.sh /tmp/06_configure_python_version_manager.sh
RUN bash /tmp/06_configure_python_version_manager.sh \
 && rm /tmp/06_configure_python_version_manager.sh \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/07_install_go_version_manager.sh /tmp/07_install_go_version_manager.sh
RUN bash /tmp/07_install_go_version_manager.sh \
 && rm /tmp/07_install_go_version_manager.sh \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/08_install_node_version_manager.sh /tmp/08_install_node_version_manager.sh
RUN bash /tmp/08_install_node_version_manager.sh \
 && rm /tmp/08_install_node_version_manager.sh \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/09_install_yarn_npm_package.sh /tmp/09_install_yarn_npm_package.sh
RUN bash /tmp/09_install_yarn_npm_package.sh \
 && rm /tmp/09_install_yarn_npm_package.sh \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/10_install_ruby.sh /tmp/10_install_ruby.sh
RUN bash /tmp/10_install_ruby.sh \
 && rm /tmp/10_install_ruby.sh \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/11_install_rust.sh /tmp/11_install_rust.sh
RUN bash /tmp/11_install_rust.sh \
 && rm /tmp/11_install_rust.sh \
 && rm -rf /var/lib/apt/lists/*

STOPSIGNAL SIGRTMIN+3

ENTRYPOINT [ "/sbin/init" ]
