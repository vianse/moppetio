Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  resources :compartirs
  resources :rfcs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :get_rfc,   path: "get_rfc"
      resources :share_rfc, path: "share_rfc"
      resources :get_share, path: "get_share"
      resources :compartir, path: "compartir"
      resources :crear_rfc, path: "crear_rfc"
      resources :eliminar_rfc, path: "eliminar_rfc"
    end
  end
end
