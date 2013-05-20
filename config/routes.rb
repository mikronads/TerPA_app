TerPAApp::Application.routes.draw do
 
  resources :smartmodels
  
  root :to => 'welcome#index'

  
end
