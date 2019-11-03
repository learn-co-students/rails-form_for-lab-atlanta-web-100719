Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :school_classes, :students, only: [:index, :new, :show, :update, :create, :edit]
  post "/school_classes/new", to: "school_classes#create"
end
