Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"

  mount GraphdocRuby::Application, at: 'graphdoc'
end
