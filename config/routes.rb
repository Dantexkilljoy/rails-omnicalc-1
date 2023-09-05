Rails.application.routes.draw do
  root to: "calculator#index"

  get "square/new", to: "calculator#index"

  get "square_root/new", to: "calculator#square_root"

  get "payment/new", to: "calculator#payment"

  get "random/new", to: "calculator#random"

  get "square/results", to: "calculator#square_results"



  # get "results"
end
