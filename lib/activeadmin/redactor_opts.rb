module Activeadmin
  module Redactor
    class RedactorOpts
      def initialize(opts={})
        @opts = opts
      end

      def iframe
        opts[:iframe] == true
      end

      private

      attr_reader :opts
    end
  end
end