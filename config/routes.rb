Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :channels do
        resources :messages, only: [:index, :create]
      end
    end
  end
end
