# Grepper
A simple commandline tool to search recursively through files of given file extention

![Travis Build Status](https://travis-ci.org/Nopzen/grepper.svg?branch=master)

## Supported Systems
  - Mac OS version: 10.12.6 or higher

## Requirements
  - [Crystal](https://crystal-lang.org/) version: 0.28.0 or higher

## Installation

### Install source from tarball
[download the source code: version v1.0.1](https://github.com/Nopzen/grepper/archive/v1.0.1.tar.gz) and unpack the tarball, from here you can enter the directory and run `$ make`

### Install source from git
1. Clone the repository `$ git clone git@github.com:Nopzen/grepper.git`
2. Enter the directory `$ cd grepper`
3. Run the make `$ make`

Both of the installations above should install the binary in your `/usr/local/bin` by default, unless `$DESTDIR` or `$prefix` is defined. See the makefile for more information regarding final location of the bin.

### OSX - With Homebrew
  1. `$ brew tap nopzen/grepper`
  2. `$ brew install grepper`
  3. run `$ grepper -h` to see if its installed if not [create a issue here](https://github.com/Nopzen/grepper/issues)

## Usage
Defaults:
path: if --path is not defined, path wil be set to current working directory.
extention: if --extention is not defined the default would be set to .txt.

Usage: grepper [query] -- [arguments]

 - -p=PATH, --path=PATH             Define path to search for files in
 - -e=EXT, --extention=EXT          Define file extention should be read
 - -q=QUERY, --query                Define the string to search for (Required)
 - -h, --help                       Show this help

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/nopzen/grepper/fork>)
2. Create your feature branch (`git checkout -b feature/my-new-feature`)
3. Commit your changes (`git commit -am 'change: mychange' <change should be either, update: fix: added: deprecated:`)
4. Push to the branch (`git push origin feature/my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Lars Krieger](https://github.com/nopzen) - creator and maintainer
