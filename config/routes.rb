Rails.application.routes.draw do
get "/shoes", to: "shoes#index" 
get "/shoes/:id", to: "shoes#show"
post "/shoes", to: "shoes#create"
put "/shoes/:id", to: "shoes#update"
delete "/shoes/:id", to: "shoes#destroy"

end
