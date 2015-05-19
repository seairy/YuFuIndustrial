Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get '', to: redirect('/zh')
  scope "/:locale", locale: /zh|en/, module: :frontend do
    root 'home#index'
    get :about, to: 'home#about', as: :about
    get :contact, to: 'home#contact', as: :contact
    resources :branches
  end
  namespace :cms do
    root 'pages#index'
    resources :pages
    resources :branches
    resources :administrators
    resource :profile do
      get 'edit_password'
      put 'update_password'
    end
    get 'signin', to: 'sessions#new', as: :signin
    post 'signin', to: 'sessions#create'
    get 'signout', to: 'sessions#destroy', as: :signout
    get 'errors/403', to: 'errors#error_403', as: :error_403
    resources :errors
    get '*not_found', to: 'errors#error_404'
  end
end