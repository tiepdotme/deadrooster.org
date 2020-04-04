module Jekyll
  class YouTubeTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @youtube_id = text.strip
    end

    def render(context)
      content = super
      <<~EOD
        <iframe width="560" height="315" src="https://www.youtube.com/embed/#{@youtube_id}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
        </iframe>
      EOD
    end
  end
end

Liquid::Template.register_tag('youtube', Jekyll::YouTubeTag)
