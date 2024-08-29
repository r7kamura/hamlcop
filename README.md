# Hamlcop

[![Gem Version](https://badge.fury.io/rb/hamlcop.svg)](https://rubygems.org/gems/hamlcop)
[![test](https://github.com/r7kamura/hamlcop/actions/workflows/test.yml/badge.svg)](https://github.com/r7kamura/hamlcop/actions/workflows/test.yml)

[RuboCop](https://github.com/rubocop/rubocop) runner for [Haml template](https://github.com/haml/haml).

> [!WARNING]
> This gem has been deprecated. Please consider using [rubocop-haml](https://github.com/r7kamura/rubocop-haml) instead.

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

### Example

```console
$ hamlcop "spec/fixtures/**/*.haml"
Inspecting 1 file
C

Offenses:

spec/fixtures/dummy.haml:1:13: C: [Correctable] Style/CharacterLiteral: Do not use the character literal - use string literal instead.
%div(a="b #{?c}")
            ^^
spec/fixtures/dummy.haml:2:7: C: [Correctable] Style/HashSyntax: Use the new Ruby 1.9 hash syntax.
%div{ :a => "b" }
      ^^^^^
spec/fixtures/dummy.haml:2:13: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
%div{ :a => "b" }
            ^^^

1 file inspected, 3 offenses detected, 3 offenses auto-correctable
```

### Configuration

Hamlcop will start looking for the configuration file in the following locations:

1. /path/to/project/.hamlcop.yml
2. /path/to/project/.rubocop.yml

For example, if you want to disable some cops on hamlcop, you can add the following file to your project:

```yaml
# .hamlcop.yml
inherit_from:
  - .rubocop.yml

Foo/Bar:
  Enabled: false
```
