Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :feedbacks, param: :number, except: [:destroy, :update] do
     get :count, on: :collection
  end
end
