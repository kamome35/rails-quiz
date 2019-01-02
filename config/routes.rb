Rails.application.routes.draw do
  get  "/"    => "post#index"
  get  "/new" => "post#new"
  post "/new" => "post#create"
  post "/check/:id" => "post#check"
end
