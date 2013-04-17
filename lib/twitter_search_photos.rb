require "twitter_search_photos/version"
require "ostruct"
require "twitter"

module TwitterSearchPhotos

  @@configured = false

  # Can be optionally called with since_id: max_id
  def self.search(query, options = {})
    configure!
    options.merge!(include_entities: 1, result_type: 'recent')
    search = Twitter.search(query, options)
    results = make_results(search.results)
    response = OpenStruct.new(max_id: search.max_id, results: results)
  end

  # make our results structure
  def self.make_results(tweets)

    results = []

    tweets.each do |tweet|
      tweet.media.each do |media|
        if media.is_a?(Twitter::Media::Photo)
          result = OpenStruct.new(
            media_url: media.media_url, 
            display_url: "https://#{media.display_url}",
            screen_name: tweet.user.screen_name
          )
          results << result
        end
      end
    end

    results

  end

  private

    def self.configure!
      return if @@configured
      Twitter.configure do |config|
        config.consumer_key       = ENV["TWITTER_CONSUMER_KEY"]
        config.consumer_secret    = ENV["TWITTER_CONSUMER_SECRET"]
        config.oauth_token        = ENV["TWITTER_OAUTH_TOKEN"]
        config.oauth_token_secret = ENV["TWITTER_OAUTH_TOKEN_SECRET"]
      end
    end
  
end
