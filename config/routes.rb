Rails.application.routes.draw do

  resources :statuses, except: [:new, :edit]

  scope 'admin' do
    resources :statuses, only: [:new, :edit]
    get '/statuses' => 'statuses#admin', as: :admin_status
  end

end
