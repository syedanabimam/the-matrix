Rails.application.routes.draw do
  devise_for :architects, path_prefix: 'my'
  resources :architects, only: %i[index show] do
    # resource :architect_profile
    # resource :sheeple
    # collection do
    #   post :create_agents
    #   get :get_agents
    #   post :change_agents
    #   get :delete_agents
    #   get :transform_sheeples_to_agents
    #
    #   post :create_sentinels
    #   get :get_sentinels
    #   post :change_sentinels
    #   get :delete_agents
    #   get :destroy_resistance_ships
    #
    #   post :create_resistance_members
    #   get :get_resistance_members
    #   post :change_resistance_members
    #   get :delete_resistance_members
    #   get :resistance_transform_to_new_identity
    #
    #   post :create_resistance_ships
    #   get :get_resistance_ships
    #   post :change_resistance_ships
    #   get :delete_resistance_ships
    #   get :destroy_sentinels
    #
    #   get :the_one
    #   get :the_one_destroy_agents
    #   get :the_one_flies
    # end
  end

  root to: 'home#index'
end
