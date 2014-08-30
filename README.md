# Activeadmin::Redactor

Limited subsection of [redactor](http://imperavi.com/redactor/) options.
Currently no plans to make this feature complete (supporting all the options from the API).
Feel free to add options and submit a pull request if missing one you require.

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

### Optional View Port Customization
#### Stylesheets
Default setting is 'activeadmin-redactor'

```ruby
  redactorable stylesheets: ["fonts", "application"]
```
#### Javascripts
Default setting is 'jquery', 'jquery_ujs', 'activeadmin-redactor'
```ruby
  redactorable javascripts: ["textdirection.js"]
```

#### Layout
Default setting is 'redactor'

```ruby
  redactorable layout: ["foobar"]
```

#### Tempate
Default setting is 'redactor/editor'

```ruby
  redactorable template: ["redactor/editor"]
```

### Optional Redactor Customization
#### [focus](http://imperavi.com/redactor/examples/focus/)
Default setting is false

```ruby
  redactorable redactor: {focus: true}
```
#### [iframe](http://imperavi.com/redactor/examples/iframe/)
Default setting is false

```ruby
  redactorable redactor: {iframe: true}
```
#### [fullpage](http://imperavi.com/redactor/examples/fullpage/)
Default setting is false

```ruby
  redactorable redactor: {fullpage: true}
```
#### [css](http://imperavi.com/redactor/examples/css/)
Default setting is none

```ruby
  redactorable redactor: {css: ['application', 'override']}
```

#### minHeight
Default setting is false

```ruby
  redactorable redactor: {minheight: 200}
```

#### imageUpload
Default setting is false

```ruby
  redactorable redactor: {imageupload: '/foo/bar/path'}
```

#### [plugins](http://imperavi.com/redactor/examples/plugin-create/)
Default setting is none

```ruby
  redactorable redactor: {plugins: ['admin/fontfamily.js']}
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/activeadmin-redactor/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
