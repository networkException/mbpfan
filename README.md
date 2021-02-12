# mbpfan

This is a fork of [linux-on-mac/mbpfan](https://github.com/linux-on-mac/mbpfan). For full documentation please read the readme there.

**T2 Macs**

This repo provides an extra script to configure this tool to work with Macs that have a t2 patched kernel.

Tested Models:
- MacBook Pro 16,1 (Ubuntu, 5.7.19-mbp)
- MacBook Pro 15,1 (Ubuntu, 5.7.15-mbp-alt)
- MacBook Pro 15,1 (Arch, 5.7.19-mbp)

## Install

See https://wiki.t2linux.org/guides/fan/

## Usage

    Usage: ./mbpfan OPTION(S)

    -h Show the help screen
    -f Run in foreground
    -v Be (a lot) verbose

## License

GNU General Public License version 3

## Credits

**This Project Is Based On:**

* https://github.com/linux-on-mac/mbpfan
* http://allanmcrae.com/2010/05/simple-macbook-pro-fan-daemon/
* http://allanmcrae.com/2011/08/mbp-fan-daemon-update/
* https://launchpad.net/macfanctld
* https://www.lobotomo.com/products/FanControl/
* Work by [t2linux.org](https://github.com/t2linux)

**This Project uses following library:**

* [ANSI C Application Settings Management](http://pokristensson.com/settings.html) by Per Ola Kristensson.
