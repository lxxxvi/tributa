# Tributa

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/tributa`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tributa'
```

And then execute:

```shell
bundle install
```

Or install it yourself as:

```shell
gem install tributa
```

## Usage

The gem tries to fetch data from [ESTV](http://www.estv2.admin.ch/steuerfuss/my_select_alle.php) and prepare it as a table structure.

Example:

```ruby
data = Tributa.load
row42 = data.rows[42]
 => #<Tributa::Table::Row:0x00007f7f2f165070 @canton="SG", @year="2013", @community="Abtwil", @canton_rate="115.00", @community_rate="115.0000", @reformed_rate="21.0000", @catholic_rate="21.0000">
```

A `Tributa::Table::Row` has these attributes

```ruby
row42.canton            # => "SG"
row42.year              # => "2013"
row42.community         # => "Abtwil"
row42.canton_rate       # => "115.00"
row42.community_rate    # => "115.0000"
row42.reformed_rate     # => "21.0000"
row42.catholic_rate     # => "21.0000"
```

A `Tributa::Table` can be queried

```ruby
data.find_all_by(canton: 'TG', year: 2018, community: 'Frauenfeld')
 => [#<Tributa::Table::Row:0x00007f94c83704d8 @canton="TG", @year="2018", @community="Frauenfeld", @canton_rate="117.00", @community_rate="146.0000", @reformed_rate="16.0000", @catholic_rate="16.0000">]
```

### TODO

* [ ] Make `Tributa::Table#find_all_by` work with any arguments

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/tributa. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/tributa/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Tributa project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/tributa/blob/master/CODE_OF_CONDUCT.md).
