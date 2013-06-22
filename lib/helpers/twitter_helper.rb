module Sinatra
  module TwitterHelper

    def share_to_twitter_url(photo_url)
      "https://twitter.com/intent/tweet?source=webclient&text=#{twitter_message(photo_url)}&via=changebrazil"
    end

    private

    def twitter_message(photo_url)
      URI.escape("Change brazil #{tiny_url(photo_url)}")
    end
  end

  helpers TwitterHelper
end
