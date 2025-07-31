Rails.application.routes.draw do
  resources :menus do
    resources :meals do
      resources :foods
    end
  end
end
