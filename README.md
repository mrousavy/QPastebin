# QPastebin

> A script to quickly paste text or files to [pastebin.com](http://pastebin.com)

## Install:
> (Optional)

1. Set API Token in `qpaste.sh` line **3**
```sh
vim qpaste.sh
```
2. Run install script
```sh
$ sudo ./install.sh
```

## Run:

> Run `./qpaste.sh` instead of `qpaste` if you didn't **[install](#install)**

1. Upload text
```sh
$ qpaste "Hello world!"
```
2. Upload a file
```sh
$ qpaste mycode.cpp
```

> (You can also directly copy the outputted link via `xclip`)
