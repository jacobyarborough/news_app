Rails.application.routes.draw do
  root 'searches#new'
  get "searches/results", to: "searches#index"
end
