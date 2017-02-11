Rails.application.routes.draw do
  resources :courses
  get 'page/home'

  get 'page/classes'

  get 'page/people'

  get 'page/inbox'

  get 'page/account'

  get 'page/contact_us'



  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root 'page#home'
end
