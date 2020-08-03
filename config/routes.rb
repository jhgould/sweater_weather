Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
namespace :api do 
  namespace :v1 do 
    resource :forecast, only: [:show]
    resource :backgrounds, only:[:show] 
    resource :trails, only: [:show]
  end 
end 
 
end
