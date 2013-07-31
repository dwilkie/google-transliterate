# Google::Transliterate

Uses Google Translate to transliterate from a script into phonetic English. For example, "เดวิดไลกสเบียร์" becomes "Dewid lịks̄ beīyr̒"" and "ដេវិឌលៃកសបៀរ" becomes "de vi d lei k sa bier".

[![Build Status](https://travis-ci.org/dwilkie/google-transliterate.png)](https://travis-ci.org/dwilkie/google-transliterate) [![Dependency Status](https://gemnasium.com/dwilkie/google-transliterate.png)](https://gemnasium.com/dwilkie/google-transliterate) [![Code Climate](https://codeclimate.com/github/dwilkie/google-transliterate.png)](https://codeclimate.com/github/dwilkie/google-transliterate)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'google-transliterate'
```

And then execute:

```shell
$ bundle
```

Or install it yourself as:

```shell
$ gem install google-transliterate
```

## Usage

```ruby
require 'google/transliterate'

transliterator = Google::Transliterate::Transliterator.new
transliterator.transliterate!("kh", "ដេវិឌលៃកសបៀរ")
=> "de vi d lei k sa bier"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
