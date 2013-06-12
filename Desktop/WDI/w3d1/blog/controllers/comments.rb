# Create
get "/new_comment" do
  erb :"comments/new_comment"
end

post "/new_comment" do
  @comment = Comment.new(params[:comment])
  if @comment.save
    @author = Author.find_or_create_by_name(params[:author][:name])
    @post = Post.find_or_create_by_id(params[:post][:id])
    @comment.update_attributes(:author_id => @author.id, :post_id => @post.id)
    redirect back
  else
    erb :"comments/new_comment"
  end
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