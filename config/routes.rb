Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :games, only: [:index]
      end
    end
  end


end
