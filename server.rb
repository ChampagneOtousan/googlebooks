require "sinatra"
require "googlebooks"

get "/" do
  erb :home
end

get "/search" do
  erb :search
end

get "/help" do
  erb :help
end
