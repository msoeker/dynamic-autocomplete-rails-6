Rails.application.routes.draw do
  root 'people#index'
  get 'people/search', to: 'people#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
