Rails.application.routes.draw do
  get "show", to: "produtos#show"
  get "produtos/busca", to: "produtos#busca", as: :busca_produto
  get "home", to: "produtos#home"
  delete "produtos/:id", to: "produtos#destroy", as: :produto
  post "produtos", to: "produtos#create"
  get "new", to: "produtos#new"
  root to: "produtos#index"
end
