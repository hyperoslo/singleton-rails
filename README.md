# Singleton Rails

[![Gem Version](https://img.shields.io/gem/v/singleton-rails.svg?style=flat)](https://rubygems.org/gems/singleton-rails)
[![Dependency Status](https://img.shields.io/gemnasium/hyperoslo/singleton-rails.svg?style=flat)](https://gemnasium.com/hyperoslo/singleton-rails)
[![Code Climate](https://img.shields.io/codeclimate/github/hyperoslo/singleton-rails.svg?style=flat)](https://codeclimate.com/github/hyperoslo/singleton-rails)

Adds singleton functionallity to ActiveRecord models.

**Supported Rails versions: 4.0.0 or higher**

Licensed under the **MIT** license, see LICENSE for more information.

## Installation

    $ gem install singleton-rails

## Usage

### Include Singleton in your model

```ruby
class AboutPage < ActiveRecord::Base
  include ActiveRecord::Singleton
end
```

### Configure rails_admin

```ruby
RailsAdmin.config do |config|

  config.actions do
    dashboard

    index &RailsAdmin::Config::Actions::SingletonAwareIndex::PATCH
    new
    export
    history_index
    bulk_delete

    show
    edit
    delete &RailsAdmin::Config::Actions::SingletonAwareDelete::PATCH
    history_show
    show_in_app
  end

end
```

### How to use it in your controller

```ruby
  class AboutPageController < ApplicationController
    def index
      @about_page = AboutPage.instance
    end
  end
```

## Credits

Hyper made this. We're a digital communications agency with a passion for good code,
and if you're using this library we probably want to hire you.
