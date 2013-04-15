# TwitterHashPhotos

## Installation

Add this line to your application's Gemfile:

    gem 'twitter_hash_photos'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install twitter_hash_photos

## Usage

  require 'twitter_hash_photos'

  # look for photos with #art in tweet
  response = TwitterHashPhotos('art')

  # get ID we can use when we request again only get new ones
  refresh_id = response.refresh_id

  # get list of results
  results = response.results

  # get first result
  first = results.first

  # individual elements of the result
  first.image_url
  first.original_link
  first.username

  # do another call, passing in the since ID:
  response = TwitterHashPhotos('art', since_id: refresh_id)


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
