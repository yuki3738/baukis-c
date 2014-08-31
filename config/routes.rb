Rails.application.routes.draw do
  namespace :staff do
    root 'top#index'
  end

  namespace :admin do
    root 'top#index'
  end

  namespace :customer do
    root 'top#index'
  end

  root 'errors#routing_error'
  get '*anything' => 'errors#routing_error'
end
