Rails.application.routes.draw do
  root 'pages#x'

  post 'pages/x'

  post 'pages/save_user'
  
  post 'pages/show_all_user'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
