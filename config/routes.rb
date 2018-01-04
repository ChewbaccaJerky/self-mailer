Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # namespace :api, defaults: {format: :json} do
  #   resources :mails, only: [ :create ]
  # end

  post 'api/send_mail' => 'api/mails#send_mail'

  root 'static_pages#root'
end
