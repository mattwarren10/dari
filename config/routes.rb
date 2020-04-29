Rails.application.routes.draw do
  
  resources :words do
  	resources :sentences
  end

  root 'words#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
