Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "dashboard#index"
  resources :work_logs

  get 'highlight_row', to: 'work_logs#highlight_row'
end
