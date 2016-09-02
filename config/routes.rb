Rails.application.routes.draw do

  root 'application#index'

  resources :markets do
    post 'check_import_data', on: :collection
    post 'import_data', on: :collection
    post 'export_data', on: :collection
  end
end
