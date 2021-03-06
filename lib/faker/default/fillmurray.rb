# frozen_string_literal: true

module Faker
  class Fillmurray < Base
    class << self
      def image(grayscale: false, width: 200, height: 200)
        raise ArgumentError, 'Width should be a number' unless width.to_s =~ /^\d+$/
        raise ArgumentError, 'Height should be a number' unless height.to_s =~ /^\d+$/
        raise ArgumentError, 'Grayscale should be a boolean' unless [true, false].include?(grayscale)

        "https://www.fillmurray.com#{'/g' if grayscale == true}/#{width}/#{height}"
      end
    end
  end
end
