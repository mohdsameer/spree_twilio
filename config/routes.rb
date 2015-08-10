Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :admin do


    resource :twilio_setting, only: [:edit, :update]
  end
end
