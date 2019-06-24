require "sinatra"
require "googlebooks"

get "/" do
  erb :home
end

get "/search" do
  @book = GoogleBooks.search("#{params[:query]}")
  @first = @book.first
  erb :search
end

get "/help" do
  erb :help
end
