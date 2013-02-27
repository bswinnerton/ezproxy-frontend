Ezproxy::Application.routes.draw do
  root :to => 'home#index'
  get "home/index"

  resources :resources do
    member do
      get 'undestroy' => 'resources#undestroy'
    end

    collection do
      get 'byletter/:id' => 'resources#byletter'
    end
  end

end
