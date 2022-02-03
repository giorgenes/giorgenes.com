module Jekyll
  module PairsFilter
    def in_pairs(input)
      []
    end
  end
end

Liquid::Template.register_filter(Jekyll::PairsFilter)