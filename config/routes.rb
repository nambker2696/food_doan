Rails.application.routes.draw do

   devise_for :users, only: :omniauth_callbacks, controllers:
  { omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'registrations' }
  scope '(:locale)', locale: /en|vi|ja/ do

  namespace :store do
    get '', to: 'dashboard#index',as: '/store'
  end

  namespace :admin do
    resources :stores
    resources :users
    resources :orders
    resources :bookings
    resources :order_details
    resources :openinghours
    resources :locations
    resources :booking_details
    resources :categories
    devise_for :users, skip: :omniauth_callbacks
    { omniauth_callbacks: 'users/omniauth_callbacks',
      registrations: 'registrations' }
    get '', to: 'dashboard#index', as: '/admin' 
  end 


  resources :booking_details
  resources :locations
  resources :opening_hours
  resources :guesses
  resources :dishes
  resources :categories
  resources :stores
  resources :order_details
  resources :bookings

    devise_for :users, skip: :omniauth_callbacks
    get 'features' => 'home#features'
    get 'resources' => 'home#resources'
    get 'about' => 'home#about'
    get 'faq' => 'home#faq'
    get 'contact' => 'home#contact'
    # root to: 'home#index'
    root to:  'store/dashboard#index'
  end
  root to: redirect('/#{I18n.default_locale}', status: 302),
  as: :redirected_root
  get '*path' => redirect('/')
end