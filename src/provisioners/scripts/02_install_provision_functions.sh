echo Install provision bash functions
(
    set -exo pipefail

    cat <<'EOF' | install -m 0666 /dev/stdin /etc/provision_functions
bashrc_initialize_provisioning() {
    test ! -f ~/.bashrc.noninteractive || return
    cp -a ~/.bashrc ~/.bashrc.old
    truncate -cs0 ~/.bashrc
    cat \
        <(echo 'test ! -f ~/.bashrc.noninteractive || . ~/.bashrc.noninteractive') \
        <(echo 'test ! -f ~/.bashrc.noninteractive.local || . ~/.bashrc.noninteractive.local') \
        ~/.bashrc.old \
        <(echo 'test ! -f ~/.bashrc.local || . ~/.bashrc.local') \
        <(printf '\n\n# New Interactive Additions\n\n') \
        >> ~/.bashrc
    install -m 0600 /dev/null ~/.bashrc.noninteractive
    rm ~/.bashrc.old
}

bashrc_add_noninteractive() {
    install -m 0600 /dev/null ~/.bashrc.new_noninteractive_section
    while read line; do
      printf '%s\n' "$line" >> ~/.bashrc.new_noninteractive_section
    done
    cat ~/.bashrc.new_noninteractive_section >> ~/.bashrc.noninteractive
    . ~/.bashrc.new_noninteractive_section
    rm ~/.bashrc.new_noninteractive_section
}

bashrc_add_interactive() {
    install -m 0600 /dev/null ~/.bashrc.new_interactive_section
    while read line; do
      printf '%s\n' "$line" >> ~/.bashrc.new_interactive_section
    done
    cat ~/.bashrc.new_interactive_section >> ~/.bashrc
    noninteractive=''
    case $- in
        *i*) ;;
        *) noninteractive='y';;
    esac
    test -n "$noninteractive" || . ~/.bashrc.new_interactive_section
    rm ~/.bashrc.new_interactive_section
}
EOF

)
