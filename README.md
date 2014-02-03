# SingletonRails

This project rocks and uses MIT-LICENSE.

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
