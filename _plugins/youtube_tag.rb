# frozen_string_literal: true

module Jekyll
  # A tag handling {% youtube foo %}
  # where foo is a YouTube video id
  class YouTubeTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @youtube_id = text.strip
    end

    def render(_context)
      <<~RENDERED_HTML
        <iframe width="560" height="315" src="https://www.youtube.com/embed/#{@youtube_id}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
        </iframe>
      RENDERED_HTML
    end
  end
end

Liquid::Template.register_tag('youtube', Jekyll::YouTubeTag)
