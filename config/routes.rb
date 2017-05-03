Rails.application.routes.draw do
  root 'welcome#index'
  get 'barcode/:ean.:format', to: 'welcome#barcode'
end
