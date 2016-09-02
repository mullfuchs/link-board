Rails.application.routes.draw do
  root 'main#index'

  get 'newpost' => 'main#newpost'

  post 'newpost' => 'main#createpost'

  get 'login' => 'sessions#new'

  post 'login' => 'sessions#create'

  get 'logout' => 'sessions#destroy'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
