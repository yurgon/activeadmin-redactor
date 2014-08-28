module Activeadmin
  module Redactor
    class RedactorOpts
      def initialize(opts={})
        @opts = opts
      end

      def iframe
        opts[:iframe] == true
      end

      def css
        opts[:css] || []
      end

      private

      attr_reader :opts
    end
  end
end