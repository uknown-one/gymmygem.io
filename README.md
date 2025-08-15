# Gymmygem

Gymmygem is a Ruby-based web interface generator and static site builder.It lets you create beautiful, multi-page websites from templates and content files with a single command.
It is designed for developers who want to build modern web applications without the complexity of traditional frameworks. Gymmygem provides a simple, intuitive way to create interactive user interfaces using Ruby code.

It lets you design modern HTML interfaces using a clean DSL, then compiles them into interactive, production-ready websites.

## Features

- **Ruby-based DSL** for UI components
- Automatic HTML generation
- Built-in dev server with live reload
- Easy deployment to any static hosting platform

## Installation

Install from RubyGems:

```bash
gem install gymmygem



TODO: Delete this and the text below, and describe your gem

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/gymmygem`. To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

TODO: Replace `UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG` with your gem name right after releasing it to RubyGems.org. Please do not do it earlier due to security reasons. Alternatively, replace this section with instructions to install your gem from git if you don't plan to release to RubyGems.org.

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG
```

## Usage
That’s the default `README.md` template Bundler generates when you run:

```bash
bundle gem gymmygem
```

Right now it’s just placeholders, so you’ll want to rewrite it to describe **what your gem does, how to install it, and how to use it**.

If you’re making a **website generator gem** in Ruby (like you mentioned earlier), here’s how you could rewrite it:

---

````markdown
# Gymmygem

Gymmygem is a lightweight static site generator written in Ruby.  
It lets you create beautiful, multi-page websites from templates and content files with a single command.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "gymmygem"
````

Then execute:

```bash
bundle install
```

Or install it directly:

```bash
gem install gymmygem
```

## Usage

Generate a new site:

```bash
gymmygem new mysite
```

Serve locally:

```bash
cd mysite
gymmygem serve
```

Build for production:

```bash
gymmygem build
```

## Development

After checking out the repo, run:

```bash
bin/setup
```

To try the gem in an interactive console:

```bash
bin/console
```

To install locally:

```bash
bundle exec rake install
```

To release a new version:

```bash
bundle exec rake release
```

## Contributing

Bug reports and pull requests are welcome at [https://github.com/USERNAME/gymmygem](https://github.com/USERNAME/gymmygem).

## License

Gymmygem is available under the MIT License.

```

---

If you want, I can also:
- Set up **`bin/gymmygem`** so the CLI works  
- Add a **`lib/gymmygem/generator.rb`** that actually builds sites  
- Add an **EBNF parser** if you want templating to be DSL-based  

Do you want me to set that up so `gymmygem new mysite` works out of the box? That would make this a functioning site generator.
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/gymmygem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/gymmygem/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Gymmygem project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/gymmygem/blob/master/CODE_OF_CONDUCT.md).
# gymmygem.io
