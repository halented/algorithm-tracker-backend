Rails.application.routes.draw do
  resources :cohorts
  get 'cohort-names', :to => 'cohorts#cohort_names'
  resources :students
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
