Rails.application.routes.draw do
  # get 'validation_codes/create'
  # post '/validation_codes' ,to :'validationCodes#create'

  namespace :api do
    namespace :v1  do
      # /api/v1
      resources :validation_codes, only: [:create]
      resource :session, only: [:create, :destory]
      resource :me, only: [:show]
      resources :items
      resources :tags

    end
  end
 
end
