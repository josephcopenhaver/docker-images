echo install google chrome
(
    set -exo pipefail ; export DEBIAN_FRONTEND=noninteractive

    chrome_version="=71.0.3578.98-1"
    # looks like remote versions rotate out pretty often, just going to install some version of stable...
    # this is done by setting the version to an empty string
    chrome_version=""

    curl -fsSL https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

    printf "deb https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list

    apt-get update

    apt-get install -y "google-chrome-stable$chrome_version"
)
