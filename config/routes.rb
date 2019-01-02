Rails.application.routes.draw do
  get  "/"    => "post#index"
  get  "/new" => "post#new"
  post "/new" => "post#create"
end
