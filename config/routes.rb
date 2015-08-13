# == Route Map
#
# Prefix Verb URI Pattern     Controller#Action
#   root GET  /               pages#home
#   home GET  /home(.:format) pages#home
#

PlayingWithWebsockets::Application.routes.draw do

  root "pages#home"

  get "/home", to: "pages#home", as: "home"
  
end
