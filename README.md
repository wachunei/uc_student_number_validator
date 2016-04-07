# UcStudentNumberValidator

[uc_student_number](https://rubygems.org/gems/uc_student_number) validation for ActiveModel

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'uc_student_number_validator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install uc_student_number_validator

## Usage

Include this line to your model
```ruby
validates :the_attribute, is_uc_student_number: true
```

You can include a custom message
```ruby
validates :the_attribute, is_uc_student_number: { message: ':(' }
```
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/wachunei/uc_student_number_validator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
