Rails.application.routes.draw do
namespace :api do
  namespace :v1 do
    get '/' => 'starwars#index'
    get '/starwars/:id' => 'starwars#show'
    post '/starwars' => 'starwars#create'
    patch '/starwars/:id' => 'starwars#edit'
    delete '/starwars/:id' => 'starwars#destroy'
  end
end

namespace :api do
  namespace :v2 do
    get '/starwars' => 'starwars#index'
    get '/starwars/:id' => 'starwars#show'
    post '/starwars' => 'starwars#create'
    patch '/starwars/:id' => 'starwars#edit'
    delete '/starwars/:id' => 'starwars#destroy'
  end
end
end
