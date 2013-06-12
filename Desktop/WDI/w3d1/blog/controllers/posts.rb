# Create
get "/new_post" do
  erb :"posts/new_post"
end

post "/new_post" do
  @post = Post.new(params[:post])
  if @post.save
    @author = Author.find_or_create_by_name(params[:author][:name])
    @post.update_attributes(:author_id => @author.id)
    @post.update_attributes(:time => Time.now)
    redirect "/"
  else
    erb :"posts/new_post"
  end
end

# Read



# Update



# Delete