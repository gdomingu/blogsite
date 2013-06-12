require "bundler"
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :username => 'Gabriel',
  :password => '',
  :database => 'blog',
  :encoding => 'utf8',
  )
require_relative "models/author"
require_relative "models/comment"
require_relative "models/post"
require_relative "models/tag"

require_relative "controllers/authors"
require_relative "controllers/comments"
require_relative "controllers/posts"
require_relative "controllers/tags"

get "/" do
  @posts = Post.all
  @authors = Author.all
  @comment = Comment.all
  erb :index
end
