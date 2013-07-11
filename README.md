# Google::Transliterate

Uses Google Translate to transliterate from a script into phonetic English. For example, "เดวิดไลกสเบียร์" becomes "Dewid lịks̄ beīyr̒"" and "ដេវិឌលៃកសបៀរ" becomes "de vi d lei k sa bier".

Note: This gem does not use that Google Translate API because I want to support Alpha languages such as Khmer. Use at your own risk!

## Installation

Add this line to your application's Gemfile:

    gem 'google-transliterate'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install google-transliterate

## Usage

    require 'google-transliterate'

    transliterator = Google::Transliterate::Transliterator.new
    transliterator.transliterate!("kh", "ដេវិឌលៃកសបៀរ")
    => "de vi d lei k sa bier"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
