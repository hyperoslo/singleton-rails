module RailsAdmin::Config::Actions::SingletonAwareNew

  PATCH = Proc.new do
    # Store reference to the original controller procedure
    original_controller = controller

    register_instance_option :controller do
      abstract_model = bindings[:abstract_model]
      model = abstract_model.model

      # Determine whether this is a singleton model
      if model.included_modules.include? ActiveRecord::Singleton
        bindings[:controller].class_eval do
          def redirect_to_on_success
            notice = t('admin.flash.successful', name: @model_config.label, action: t("admin.actions.#{@action.key}.done"))
            redirect_to show_path(id: @object.id), flash: {success: notice}
          end
        end
      end

      original_controller
    end

  end

end
