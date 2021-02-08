# mbpfan

This is a fork of [linux-on-mac/mbpfan](https://github.com/linux-on-mac/mbpfan). For full documentation please read the readme there.

**AppleSMC**

This repo provides an extra script to configure this tool to work with Macs that have a t2 patched kernel. Run `./configurePath.sh` before building / installing. Visit [t2linux.org](https://t2linux.org) for more information on the kernels.

Tested Models:
- MacBook Pro 16,1 (Ubuntu, 5.7.19-mbp)
- MacBook Pro 15,1 (Ubuntu, 5.7.15-mbp-alt)
- MacBook Pro 15,1 (Arch, 5.7.19-mbp)

### Generic Install Instructions (All Other Operating Systems)

Compile with

    make

Install with

    sudo make install

It copies mbpfan to /usr/sbin, mbpfan.conf to /etc (and overwrites existing files),
README.md to /usr/share/doc/mbpfan, and mbpfan.8.gz to /usr/share/man/man8

If you would like to compile with Clang instead of GCC, simply set your system's
default compiler to be Clang. Tested with Clang 3.8 and 3.9. Tested with Clang
4.0 along with llvm-lld (The LLVM Linker).


Run The Tests
-------------
Users may run the tests after building the program. Please run the following command _from within the source directory_.

    sudo make tests

Note that this only works on MacBook and not desktop computers due to different environment expectations.


## Run Instructions

If not installed, run with

    sudo bin/mbpfan

If installed, manually run with

    sudo mbpfan

If installed and using the init file, run with (Ubuntu example)

    sudo service mbpfan start


## Starting at boot

**systemd**
As a special bonus, a service file for systemd is also included. To use it,
execute the following (as root):

    sudo cp mbpfan.service /etc/systemd/system/
    sudo systemctl enable mbpfan.service
    sudo systemctl daemon-reload
    sudo systemctl start mbpfan.service

## Usage

    Usage: ./mbpfan OPTION(S)

    -h Show the help screen
    -f Run in foreground
    -v Be (a lot) verbose

## Forcing a certain fanspeed

Edit `/etc/mpbfan.conf`, uncomment `min_fan1_speed` and set it to some rpm that you want. Then restart the deamon.

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
