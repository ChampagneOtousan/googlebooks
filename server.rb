require "sinatra"
require "googlebooks"

get "/" do
  erb :home
end

get "/search" do
  book = GoogleBooks.search("#{params[:query]}")
  first = book.first
  @thebookauthor = first.authors
  @thebookname = first.title
  @thebookimage = first.image_link
  erb :search
end

get "/help" do
  erb :help
end
