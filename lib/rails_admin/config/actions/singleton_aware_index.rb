module RailsAdmin::Config::Actions::SingletonAwareIndex

  PATCH = Proc.new do

    # Hide this index action when dealing with a singleton model
    visible do
      bindings[:abstract_model].model.included_modules.exclude? ActiveRecord::Singleton
    end

    # Store reference to the original controller procedure
    original_controller = controller

    register_instance_option :controller do
      abstract_model = bindings[:abstract_model]
      model = abstract_model.model

      # Determine whether this is a singleton model
      if model.included_modules.include? ActiveRecord::Singleton
        Proc.new do

          # Redirect to new/show view depending on whether a record already exists
          if singleton = model.first
            redirect_to show_path abstract_model.to_param, singleton.id
          else
            redirect_to new_path abstract_model.to_param
          end
        end
      else
        original_controller
      end
    end

  end

end
