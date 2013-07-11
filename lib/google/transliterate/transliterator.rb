# encoding: utf-8
module Google
  module Translite
    class Transliterator
      require 'httparty'

      include HTTParty

      class Parser::Simple < HTTParty::Parser
        require 'csv'

        def parse
          CSV.parse(body.gsub(/(?:\[|\])/, ""))[0][3]
        end
      end

      parser Parser::Simple

      GOOGLE_TRANSLATE_URL = "http://translate.google.com/translate_a/t"
      DEFAULT_USER_AGENT = "Mozilla/5.0"

      def transliterate!(source_script, text)
        self.class.get(
          GOOGLE_TRANSLATE_URL,
          :query => {
            :client => "t",
            :sl => source_script,
            :ie => "UTF-8",
            :oe => "UTF-8",
            :q => text
          },
          :headers => {"User-Agent" => DEFAULT_USER_AGENT}
        ).parsed_response.force_encoding("UTF-8")
      end
    end
  end
end
