require "tagalog_haikunator/version"
require "securerandom"

module TagalogHaikunator
  class << self
    def haikunate(token_range = 9999, delimiter = "-")
      build(token_range, delimiter)
    end

    private

    def build(token_range, delimiter)
      sections = [
        adjectives[random_seed % adjectives.length],
        nouns[random_seed % nouns.length],
        token(token_range)
      ]

      sections.compact.join(delimiter)
    end

    def random_seed
      SecureRandom.random_number(4096)
    end

    def token(range)
      SecureRandom.random_number(range) if range > 0
    end


    def adjectives
      %w(magandang mapagkumbabang mapanlikhang masayang payapang mahiwagang mabangong makapangyarihang masidhing magulong maamong marangyang mapanlikhang makataong masiglang)
    end

    def nouns
      %w(
        waterfall river breeze moon rain wind sea morning
        snow lake sunset pine shadow leaf dawn glitter forest
        hill cloud meadow sun glade bird brook butterfly
        bush dew dust field fire flower firefly feather grass
        haze mountain night pond darkness snowflake silence
        sound sky shape surf thunder violet water wildflower
        wave water resonance sun log dream cherry tree fog
        frost voice paper frog smoke star
      )
    end
  end
end
