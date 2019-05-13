Spree::Core::Engine.add_routes do
  # Add your extension routes here
  namespace :admin do
    resource :instagram_settings, only: %i[edit update destroy]
    namespace :instagram_callbacks do
      get :connect
      get :callback
    end
  end
end
