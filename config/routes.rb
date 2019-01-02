Rails.application.routes.draw do
  get "/" => "post#index"
  get "/post" => "post#create"
end
