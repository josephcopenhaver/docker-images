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
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/02_install_provision_functions /tmp/02_install_provision_functions
RUN /tmp/02_install_provision_functions \
 && rm /tmp/02_install_provision_functions \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/03_install_vagrant_support /tmp/03_install_vagrant_support
RUN /tmp/03_install_vagrant_support \
 && rm /tmp/03_install_vagrant_support \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/04_base_python_runtime /tmp/04_base_python_runtime
RUN /tmp/04_base_python_runtime \
 && rm /tmp/04_base_python_runtime \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/05_install_rcode_rmate /tmp/05_install_rcode_rmate
RUN /tmp/05_install_rcode_rmate \
 && rm /tmp/05_install_rcode_rmate \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/06_install_asdf /tmp/06_install_asdf
RUN /tmp/06_install_asdf \
 && rm /tmp/06_install_asdf \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/07_configure_pyenv /tmp/07_configure_pyenv
RUN /tmp/07_configure_pyenv \
 && rm /tmp/07_configure_pyenv \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/08_install_node_and_npm /tmp/08_install_node_and_npm
RUN /tmp/08_install_node_and_npm \
 && rm /tmp/08_install_node_and_npm \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/09_install_yarn /tmp/09_install_yarn
RUN /tmp/09_install_yarn \
 && rm /tmp/09_install_yarn \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/10_install_ruby /tmp/10_install_ruby
RUN /tmp/10_install_ruby \
 && rm /tmp/10_install_ruby \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/11_install_rust /tmp/11_install_rust
RUN /tmp/11_install_rust \
 && rm /tmp/11_install_rust \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/12_install_yamllint /tmp/12_install_yamllint
RUN /tmp/12_install_yamllint \
 && rm /tmp/12_install_yamllint \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/13_install_cfn_lint /tmp/13_install_cfn_lint
RUN /tmp/13_install_cfn_lint \
 && rm /tmp/13_install_cfn_lint \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/14_install_jsonlint /tmp/14_install_jsonlint
RUN /tmp/14_install_jsonlint \
 && rm /tmp/14_install_jsonlint \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/15_install_java_version_manager /tmp/15_install_java_version_manager
RUN /tmp/15_install_java_version_manager \
 && rm /tmp/15_install_java_version_manager \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/16_install_google_chrome /tmp/16_install_google_chrome
RUN /tmp/16_install_google_chrome \
 && rm /tmp/16_install_google_chrome \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/17_install_mysql_client /tmp/17_install_mysql_client
RUN /tmp/17_install_mysql_client \
 && rm /tmp/17_install_mysql_client \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/18_install_postgres_client /tmp/18_install_postgres_client
RUN /tmp/18_install_postgres_client \
 && rm /tmp/18_install_postgres_client \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/19_install_redis_cli /tmp/19_install_redis_cli
RUN /tmp/19_install_redis_cli \
 && rm /tmp/19_install_redis_cli \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/20_install_adr /tmp/20_install_adr
RUN /tmp/20_install_adr \
 && rm /tmp/20_install_adr \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/21_install_nginx /tmp/21_install_nginx
RUN /tmp/21_install_nginx \
 && rm /tmp/21_install_nginx \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/22_install_nim /tmp/22_install_nim
RUN /tmp/22_install_nim \
 && rm /tmp/22_install_nim \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/23_install_crystal_version_manager /tmp/23_install_crystal_version_manager
RUN /tmp/23_install_crystal_version_manager \
 && rm /tmp/23_install_crystal_version_manager \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/24_install_golang /tmp/24_install_golang
RUN /tmp/24_install_golang \
 && rm /tmp/24_install_golang \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/25_install_golangci_lint_and_goreleaser /tmp/25_install_golangci_lint_and_goreleaser
RUN /tmp/25_install_golangci_lint_and_goreleaser \
 && rm /tmp/25_install_golangci_lint_and_goreleaser \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/26_install_mage /tmp/26_install_mage
RUN /tmp/26_install_mage \
 && rm /tmp/26_install_mage \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/27_install_yq /tmp/27_install_yq
RUN /tmp/27_install_yq \
 && rm /tmp/27_install_yq \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/28_install_jless /tmp/28_install_jless
RUN /tmp/28_install_jless \
 && rm /tmp/28_install_jless \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/29_install_ytt /tmp/29_install_ytt
RUN /tmp/29_install_ytt \
 && rm /tmp/29_install_ytt \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/30_install_scala /tmp/30_install_scala
RUN /tmp/30_install_scala \
 && rm /tmp/30_install_scala \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/31_install_sbt /tmp/31_install_sbt
RUN /tmp/31_install_sbt \
 && rm /tmp/31_install_sbt \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/32_install_snzip /tmp/32_install_snzip
RUN /tmp/32_install_snzip \
 && rm /tmp/32_install_snzip \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/33_install_zig /tmp/33_install_zig
RUN /tmp/33_install_zig \
 && rm /tmp/33_install_zig \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/34_install_rlang /tmp/34_install_rlang
RUN /tmp/34_install_rlang \
 && rm /tmp/34_install_rlang \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/35_install_ivy_apl_and_uiua_apl /tmp/35_install_ivy_apl_and_uiua_apl
RUN /tmp/35_install_ivy_apl_and_uiua_apl \
 && rm /tmp/35_install_ivy_apl_and_uiua_apl \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/36_install_fzf /tmp/36_install_fzf
RUN /tmp/36_install_fzf \
 && rm /tmp/36_install_fzf \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/37_install_entr /tmp/37_install_entr
RUN /tmp/37_install_entr \
 && rm /tmp/37_install_entr \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/38_install_just /tmp/38_install_just
RUN /tmp/38_install_just \
 && rm /tmp/38_install_just \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/39_install_earthly /tmp/39_install_earthly
RUN /tmp/39_install_earthly \
 && rm /tmp/39_install_earthly \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/40_install_jsonpatch /tmp/40_install_jsonpatch
RUN /tmp/40_install_jsonpatch \
 && rm /tmp/40_install_jsonpatch \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/41_install_jsonnet /tmp/41_install_jsonnet
RUN /tmp/41_install_jsonnet \
 && rm /tmp/41_install_jsonnet \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/42_install_act /tmp/42_install_act
RUN /tmp/42_install_act \
 && rm /tmp/42_install_act \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/43_install_actionlint /tmp/43_install_actionlint
RUN /tmp/43_install_actionlint \
 && rm /tmp/43_install_actionlint \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/44_install_action_validator /tmp/44_install_action_validator
RUN /tmp/44_install_action_validator \
 && rm /tmp/44_install_action_validator \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/45_install_pre_commit /tmp/45_install_pre_commit
RUN /tmp/45_install_pre_commit \
 && rm /tmp/45_install_pre_commit \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/46_install_cntlm /tmp/46_install_cntlm
RUN /tmp/46_install_cntlm \
 && rm /tmp/46_install_cntlm \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/47_install_gh_cli /tmp/47_install_gh_cli
RUN /tmp/47_install_gh_cli \
 && rm /tmp/47_install_gh_cli \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/48_install_asciinema /tmp/48_install_asciinema
RUN /tmp/48_install_asciinema \
 && rm /tmp/48_install_asciinema \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/49_install_julia /tmp/49_install_julia
RUN /tmp/49_install_julia \
 && rm /tmp/49_install_julia \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/50_install_pkl /tmp/50_install_pkl
RUN /tmp/50_install_pkl \
 && rm /tmp/50_install_pkl \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/98_install_kubernetes_tools /tmp/98_install_kubernetes_tools
RUN /tmp/98_install_kubernetes_tools \
 && rm /tmp/98_install_kubernetes_tools \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

COPY ./provisioners/scripts/99_install_docker /tmp/99_install_docker
RUN /tmp/99_install_docker \
 && rm /tmp/99_install_docker \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -maxdepth 1 -mindepth 1 -exec rm -rf -- \{} +

ENTRYPOINT [ "/init" ]
