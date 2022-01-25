# Hamlcop

[![Gem Version](https://badge.fury.io/rb/hamlcop.svg)](https://rubygems.org/gems/hamlcop)
[![test](https://github.com/r7kamura/hamlcop/actions/workflows/test.yml/badge.svg)](https://github.com/r7kamura/hamlcop/actions/workflows/test.yml)

[RuboCop](https://github.com/rubocop/rubocop) runner for [Haml template](https://github.com/haml/haml).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hamlcop'
```

And then execute:

```
bundle install
```

Or install it yourself as:

```
gem install hamlcop
```

## Usage

Use `hamlcop` executable to check offenses and auto-correct them.

```console
$ hamlcop --help
Usage: hamlcop [options] [file1, file2, ...]
    -a, --auto-correct               Auto-correct offenses.
    -c, --config=                    Specify configuration file.
        --[no-]color                 Force color output on or off.
```
