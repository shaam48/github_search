Rails.application.routes.draw do
  get 'repos/search', to: 'repos#search'
  root 'repos#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
