Rails.application.routes.draw do
  get     "login"    => "session#new"
  post    "login"    => "session#create"
  delete  "logout"   => "session#destroy"

  # Cách viết route khác với cách viết route ở trên bằng cách sử dụng
  # 'match' để chỉ định cho các route '/login' và '/logout'

  # match '/login', to: 'session#new', via: [:get]
  # match '/login', to: 'session#create', via: [:post]
  # match '/logout', to: 'session#destroy', via: [:delete]
  #
  # resources :session, only: [:new, :create, :destroy]

  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
