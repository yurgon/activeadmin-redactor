# Activeadmin::Redactor

TODO: Write a gem description

## Usage

### Add it to your Gemfile

```ruby
gem 'activeadmin-redactor'
```

### Configure your ActiveAdmin Resource

```ruby
ActiveAdmin.register Page do
  redactorable # creates the controller action which handles the editor

  index do
    redactorable_edit_icon # inserts an edit icon / link
    # other columns...
  end
end
```

### Optional Redactor Customization
#### Stylesheets
```ruby
ActiveAdmin.register Page do
  redactorable stylesheets: ["fonts", "application"]
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/activeadmin-redactor/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
