# TrackMe

This is a gem that allows you to easily add javascript based metric systems like kissmetrics and mixpanel to your application.

## Installation

Add this line to your application's Gemfile:

    gem 'track_me'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install track_me

After installing the gem, you need to run the generator that will install a few files.

    $ rails g track_me:install

## Usage

In your controllers, call trackme and pass in the name of the action and the string that will be used to describe the action.  You can also pass in a hash with a key called 'object' which will be used for sending the details of the object.

```ruby
class CommentsController < ActionController::Base
  trackme index: ['Visited the comments index page'],
         create: ['Created a comment', object: 'comment']

  def index
  end

  def create
    @comment = ...
  end
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
