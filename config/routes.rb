Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :links, :visits

  get '/:short_url', to: 'links#redirect'

end
