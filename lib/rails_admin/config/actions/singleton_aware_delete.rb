module RailsAdmin::Config::Actions::SingletonAwareDelete

  PATCH = Proc.new do

    # Hide this delete action when dealing with a singleton model
    visible do
      bindings[:abstract_model].model.included_modules.exclude? ActiveRecord::Singleton
    end

  end

end
