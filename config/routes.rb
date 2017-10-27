Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope module: 'api' do
    namespace :v1 do
      resources :campaigns
      resources :contacts do
        get 'search', on: :collection
      end
      resources :tags
    end
  end
end
