class Lastfm
  module MethodCategory
    class Album < Base
      regular_method :get_info, [:artist, :album], [] do |response|
        result = response.xml['album']
        result['releasedate'].lstrip! unless result['releasedate'].empty?
        result
      end
      
      regular_method :get_top_tags, [:artist, :album], [] do |response|
        response.xml['toptags']['tag']
      end
    end
  end
end
