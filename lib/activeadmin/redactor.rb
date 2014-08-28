require 'activeadmin/redactor/version'
require 'activeadmin/redactor_opts'
require 'activeadmin'
require 'rails/engine'

module Activeadmin
  module Redactor
    module ControllerActions
      def redactorable(opts={})
        member_action :redactor do
          @redactor_opts = RedactorOpts.new(opts[:redactor])
          @stylesheets = (opts[:stylesheets] || []).unshift("activeadmin-redactor")
          render 'redactor/editor', layout: 'redactor'
        end
      end
    end

    module TableMethods
      def redactorable_edit_icon
        column 'Redactor', class: 'activeadmin-redactorable' do |resource|
          resource_redactor_path = resource_path(resource)
          resource_redactor_path << '/redactor'
          link_to 'Redactor', resource_redactor_path, class: 'edit'
        end
      end
    end

    ::ActiveAdmin::ResourceDSL.send(:include, ControllerActions)
    ::ActiveAdmin::Views::TableFor.send(:include, TableMethods)

    class Engine < ::Rails::Engine
    end
  end
end
