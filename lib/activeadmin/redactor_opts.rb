require_relative 'options'

module Activeadmin
  module Redactor
    class RedactorOpts < Options
      def iframe
        opts[:iframe] === true
      end

      def fullpage
        opts[:fullpage] === true
      end

      def focus
        opts[:focus] === true
      end

      def css
        opts[:css] || []
      end

      def minheight
        opts[:minheight] || false
      end

      def imageupload
        opts[:imageupload] || false
      end

      def plugins
        opts[:plugins] || []
      end
    end
  end
end
