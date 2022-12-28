# ASH Dump Analyzer

## Quick Start

1. Download [ashda-2.0.4-bin.tar.gz](https://github.com/yuhere/py2aco/releases/download/ashda-2.0.x/ashda-2.0.4-bin.tar.gz), and extract it to somewhere on your PC.
2. On windows, startup it by `bin\ashda.cmd`; On macOS/Linux, startup it by `bin/ashda.sh`.

### Create a shortcut to desktop:

1, Windows, in resource browser, right click on `bin\ashda.cmd` and select `sent to -> shortcut to desktop`, then you can see the icon on your desktop;

2, macOS, in Finder, right click on `bin/ashda.sh` and choose "Get Info", then click the triangle next to "Open with" to expand the section, then select the Terminal application. To be able to select terminal you need to switch from "Recommended Applications" to "All Applications". (The Terminal.app application can be found in the Utilities folder). Then right on the file again, and choose "Make Alias", then you can place the [alias](https://support.apple.com/lt-lt/guide/mac-help/aside/glos3c6968d0/13.0/mac/13.0) in a convenient location, and double-click it to open the item quickly. See [Create and remove aliases](https://support.apple.com/lt-lt/guide/mac-help/create-and-remove-aliases-on-mac-mchlp1046/13.0/mac/13.0).

## Prerequisite - Java

  Download and install `jre-8u144-windows-i586.exe` from https://www.oracle.com/java/technologies/javase/javase8-archive-downloads.html.

## Upgrade

Execute `bin\auto-updater.cmd` or `bin/auto-updater.sh` to upgrade to the latest version. if you need a proxy to access internet, specify proxy by an environment variable, for window `set HTTP_PROXY=http://xxx.yy.com:80`, for macOS/Linux `export HTTP_PROXY=http://xxx.yy.com:80`.
