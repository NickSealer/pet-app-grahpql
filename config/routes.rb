# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: 'graphql#execute'

  root 'home#index'
  post '/graphql', to: 'graphql#execute'
end
