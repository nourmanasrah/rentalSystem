Rails.application.routes.draw do

  root 'pages#home'

  devise_for :users,
             :path => '',
             :path_names => {:sign_in => 'login', :singn_out => 'logout', :edit => 'profile'},
             :controllers => {:registrations => 'registrations'}
  


  resources  :users, only: [:show]
  resources  :rooms
  resources  :photos

end
