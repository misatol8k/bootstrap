Rails.application.routes.draw do
  root to: 'tops#index'
  get '/blogs', to: 'blogs#index' #追記する
  resources :blogs do
    collection do
      post :confirm
    end
  end
end
