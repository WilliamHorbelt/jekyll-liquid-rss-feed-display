require 'feedzirra'

module Jekyll

  class FeedDisplay < Liquid::Tag

    def initialize(tag_name, text, tokens)

      super

      if text =~ /(https?:\/\/[\S]+)?(\s+\d+)?/
        @feedUrl = $1

        if $2 == nil
          @limit = 10
        else
          @limit = $2.to_i 
        end
      end

    end

    def render(context)
      output = '<ul>'
      feed = Feedzirra::Feed.fetch_and_parse(@feedUrl)
      
      feed.entries.first(@limit).each do |entry|
        output += '<li><a href="' + entry.url + '" title="' + entry.title + '">' + entry.title + '</a></li>'
      end

      output += '</ul>'
      output
    end

  end

end

Liquid::Template.register_tag('feed_display', Jekyll::FeedDisplay)