Rails.application.routes.draw do


  get 'preexistenceclients/_form'

  get 'preexistenceclients/index'

  get 'preexistenceclients/edit'

  get 'preexistenceclients/new'

  get 'clients/new'

  get 'professionals/panel' => 'professional/panel'
 #post 'user/attention/new'
#get 'attention/index'
 #get 'attention/edit'
 #get 'attention/show'
 #get 'attention/_form'

  devise_for :users
  resources :attentions
    resources :clients
    resources :professionals
        resources :preexistenceclients

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

devise_scope :user do
  authenticated :user do
    root 'attentions#index', as: :authenticated_root
    get "/users/sign_out" => 'devise/sessions#destroy'
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end

end
