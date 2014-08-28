require_relative 'options'

module Activeadmin
  module Redactor
    class RedactorOpts < Options
      def iframe
        opts[:iframe] == true
      end

      def css
        opts[:css] || []
      end

      def minheight
        opts[:minheight] || false
      end
    end
  end
end
