#Create
get "/new_tag" do
  erb :"tags/new_tag"
end

post "/new_tag" do
  @tag = Tag.new(:name => params[:tag_name])
  if @tag.save
    redirect "/"
  else
    erb :"tags/new_tag"
  end
end
# Read



# Update



# Delete