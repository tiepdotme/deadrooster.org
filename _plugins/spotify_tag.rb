# frozen_string_literal: true

# The module to extend from a Jekyll project according to Jekyll's docs.
module Jekyll
  # A tag handling {% spotify playlist_id %}
  # Example: {% spotify 6yt7RQR9MBtuCd3gjTuOuw %}
  class SpotifyTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      args = text.strip.split(' ', 2)

      if args.count < 1 || args.count > 2
        raise 'Spotify tag usage: {% spotify playlist_id localized_title %}'
      end

      @playlist_id = args[0]
      @playlist_author = args[1]
    end

    def render(_context)
      <<~RENDERED_HTML
        <div>
          <a class="button" href="https://open.spotify.com/playlist/#{@playlist_id}">
            Écouter sur Spotify
          </a>
        </div>
      RENDERED_HTML
    end
  end

  Liquid::Template.register_tag('spotify', Jekyll::SpotifyTag)
end
