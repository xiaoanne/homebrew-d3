1. place the kinetik binaries into the a folder
2. create the kinetik-cli.rb file and copy the file to the system location: /opt/homebrew/Library/Taps/homebrew/homebrew-core/Formula/
3. install it: brew install --build-bottle kinetik-cli or brew install --build-bottle Formula/kinetik-cli.rb
4. create the bottle file: brew bottle kinetik-cli or brew bottle Formula/kinetik-cli.rb
5. now you should see the tar file: kinetik-cli--0.13.5.arm64_monterey.bottle.tar.gz
6. now people can install from the tar file: brew install kinetik--0.13.5.arm64_monterey.bottle.tar.gz
7. and uninstall it with: brew uninstall kinetik-cli

upload bottle files:
brew test-bot  ../../homebrew-kinetik-cli/kinetik-cli.rb
export HOMEBREW_GITHUB_USERNAME=xiaoanne
export HOMEBREW_GITHUB_TOKEN=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
export HOMEBREW_GITHUB_PACKAGES=xiaoanne/homebrew-kinetik-cli
brew upload --username=xiaoanne --repository=homebrew-kinetik-cli kinetik-cli --version=0.13.5 --bintray-org=homebrew

oras push ghcr.io/xiaoanne/homebrew-d3/kinetik-cli:0.13.5 \
--artifact-type application/vnd.acme.rocket.config \
./artifact.txt

/opt/homebrew/Library/Taps/xiaoanne/homebrew-kinetik-cli
brew dispatch-build-bottle --macos=12.5 --upload Formula/kinetik-cli.rb --tap xiaoanne/kinetik-cli
