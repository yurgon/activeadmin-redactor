module Activeadmin
  module Redactor
    class Options
      def initialize(opts={})
        @opts = opts
      end

      private

      attr_reader :opts
    end
  end
end
