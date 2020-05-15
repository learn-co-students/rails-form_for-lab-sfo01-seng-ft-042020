Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create, :show, :edit]
  patch 'students/:id', to: 'students#update'
  resources :school_classes, only: [:index, :new, :show, :create, :edit]
  patch 'school_classes/:id', to: 'school_classes#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
