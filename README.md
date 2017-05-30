# costper [![Build Status](https://travis-ci.org/dnguyensr/costper.svg?branch=master)](https://travis-ci.org/dnguyensr/costper) [![Coverage Status](https://coveralls.io/repos/github/dnguyensr/costper/badge.svg?branch=master)](https://coveralls.io/github/dnguyensr/costper?branch=master)

A web application for creating shopping lists for user generated stores and item information.

## Environment

### Ruby/Rails Version

* Ruby 2.4.0
* Rails 5.1.1

### System Dependencies

* Node.js 6.4.0+
* Yarn
* Foreman

### App Dependencies

* Devise: The Devise gem is used to handle user authentication.

***
## Development

To run the rails server and webpack-dev-server concurrently:
Run `foreman start`

### Text Editor

An EditorConfig plug-in is required for most text editors to conform to coding styles defined in the editorconfig file. EditorConfig plug-ins for some editors:  [Atom](https://atom.io/packages/editorconfig), [Sublime](https://github.com/sindresorhus/editorconfig-sublime), [VS Code](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)

### Styling
Bootstrap 4 is included in the view template as CDN scripts.

### Testing
RSpec, Rails::Controller::Testing, Shoulda Matchers, and FactoryGirl, Capybara, and Selenium gems are included and available to use in development and testing environments.

To run all tests: `rspec` or `bundle exec rspec`
**Note**: prepending `bundle exec` may be required depending on your local settings

To run specific tests:
* Models: `rspec spec/models`
* Controllers: `rspec spec/controllers`
* Specific files: `rspec spec/controllers/pages_controller_spec.rb`

***

## Production

### Rails Environment

**ENV:**
Required ENV variables

| ENV Variable | Value |
|----|----|
|SECRET_KEY_BASE| Devise required key base (generate with rails secret) |
