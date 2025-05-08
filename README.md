# LoginMOTD
This repository contains a few `.zshrc` files to provide informative console login messages on macOS.

## Installation
I highly recommend forking this repository and making your changes to personalize the MOTD that you are shown on login. That being said, if you completely agree with the information fields in my script, or just too lazy to modify it, this command will get the contents of the `motd.sh` file and append it to your `~/.zshrc` file.

```shell
curl -sS https://raw.githubusercontent.com/squishycat92/LoginMOTD/refs/heads/main/motd.sh >> ~/.zshrc
```