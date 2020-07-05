module ApplicationHelper
    def show_errors(object, field_name)
        if object.errors.any?
          if !object.errors.messages[field_name].blank?
            puts '-------'
            puts object.errors.messages[field_name]
            puts '-------'
            
          end
        end
      end 
end
