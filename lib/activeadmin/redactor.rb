require 'activeadmin/redactor/version'
require 'activeadmin'

module Activeadmin
  module Redactor
    module TableMethods
      def redactorable_edit_icon
        column 'Redactor', class: 'activeadmin-redactorable' do |resource|
          resource_redactor_path = resource_path(resource)
          resource_redactor_path << '/redactor'
          link_to 'Redactor', resource_redactor_path, class: 'edit'
        end
      end
    end

    ::ActiveAdmin::Views::TableFor.send(:include, TableMethods)
  end
end
