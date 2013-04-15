# TwitterSearchPhotos

## Installation

Add this line to your application's Gemfile:

    gem 'twitter_search_photos'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install twitter_search_photos

## Usage

    require 'twitter_search_photos'

    Set up the following keys for ENV:

    TWITTER_CONSUMER_KEY
    TWITTER_CONSUMER_SECRET
    TWITTER_OAUTH_TOKEN
    TWITTER_OAUTH_TOKEN_SECRET

    # look for photos with #art in tweet
    response = TwitterSearchPhotos.search('#art')

    # get ID we can use when we search again to only get new ones
    max_id = response.max_id

    # get list of results
    results = response.results

    # get first result
    first = results.first

    # individual elements of the result
    first.media_url
    first.display_url
    first.screen_name

    # do another call, passing in the since ID:
    response = TwitterSearchPhotos('#art', since_id: max_id)


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Thanks

Some of the code is based on https://github.com/scottwb/twitter-image-search.

