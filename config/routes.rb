require "sidekiq/web"
Rails.application.routes.draw do
  mount Sidekiq::Web => "/sidekiq"
  namespace :api do
    namespace :v1 do
      resources :products
      resources :categories
    end
  end
end
