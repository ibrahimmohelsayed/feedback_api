Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  require 'sidekiq/web'
  mount Sidekiq::Web => 'sidekiq'
  resources :feedbacks, param: :number, except: [:destroy, :update] do
     get :count, on: :collection
  end
  Rails.application.routes.draw do
    if Rails.env.development?
      mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
    end
    post "/graphql", to: "graphql#execute"
  end
end
