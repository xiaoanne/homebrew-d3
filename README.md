1. place the kinetik binaries into the a folder
2. create the kinetik-cli.rb file and copy the file to the system location: /opt/homebrew/Library/Taps/homebrew/homebrew-core/Formula/
   3. install it: brew install --build-bottle kinetik-cli
4. create the bottle file: brew bottle kinetik-cli 
5. now you should see the tar file: kinetik-cli--0.13.5.arm64_monterey.bottle.tar.gz
6. now people can install from the tar file: brew install kinetik-cli--0.13.5.arm64_monterey.bottle.tar.gz
7. and uninstall it with: brew uninstall kinetik-cli 
8. 