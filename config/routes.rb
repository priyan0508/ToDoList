Rails.application.routes.draw do
  root "workitems#index"
  resources :workitems
end

