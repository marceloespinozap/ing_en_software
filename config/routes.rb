Rails.application.routes.draw do

  get 'attentions/pdf/:id' => "attentions#pdf", :as =>'create_pdf'
 match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user

  get 'admins/index'

  get 'admins/new'

  get 'admin/index'

  get 'admin/new'

  get 'preexistenceclients/_form'

  get 'preexistenceclients/index'

  get 'preexistenceclients/edit'

  get 'preexistenceclients/new'

  get 'clients/new'

  get 'professionals/panel' => 'professional/panel'

devise_for :users do 
  get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
end
 resources :users, :controller => "users", :except => [:show] 
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
