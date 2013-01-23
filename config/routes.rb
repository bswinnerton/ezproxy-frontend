Ezproxy::Application.routes.draw do
  root :to => "resources#index"
  resources :resources do
    member do
      get 'undestroy' => 'resources#undestroy'
    end
  end

end
