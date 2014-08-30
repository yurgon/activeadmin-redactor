require_relative 'options'

module Activeadmin
  module Redactor
    class ViewportOpts < Options
      DEFAULT_LAYOUT = 'redactor'
      DEFAULT_TEMPLATE = 'redactor/editor'
      DEFAULT_STYLESHEET = 'activeadmin-redactor'
      DEFAULT_JAVASCRIPTS = %w(jquery jquery_ujs activeadmin-redactor)

      def layout
        opts[:layout] || DEFAULT_LAYOUT
      end

      def template
        opts[:template] || DEFAULT_TEMPLATE
      end

      def stylesheets
        (opts[:stylesheets] || []).unshift(DEFAULT_STYLESHEET)
      end

      def javascripts
        (opts[:javascripts] || []).unshift(*DEFAULT_JAVASCRIPTS)
      end
    end
  end
end
