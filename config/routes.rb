Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  ## Do not put this line after the root statement the end. This root for the authenticated users need to be set first.
  resources :docs
  authenticated :user do
  	root "docs#index", as: "authenticated_root"
  end

  root 'welcome#index'
end
