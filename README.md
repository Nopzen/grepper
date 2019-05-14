# Grepper
A simple commandline tool to search recursively through files of given file extention

## Supported Systems
  - Mac OS version: 10.12.6 or higher

## Requirements
  - [Crystal](https://crystal-lang.org/) version: 0.28.0 or higher

## Installation
Current version v1.0.0 have only been tested on OSX 10.12.6 but it is possible to [download the source code](https://github.com/Nopzen/grepper/archive/v1.0.0.tar.gz) for version v1.0.0 and compile it with Crystal your self.

### Self install
TODO: Write manual installation guide

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
 - -e=EXT, --extention=EXT          Define file extention should be read (Required)
 - -q=QUERY, --query                Define the string to search for
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
