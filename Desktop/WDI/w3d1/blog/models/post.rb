class Post < ActiveRecord::Base
  belongs_to :author
  has_many :comments
  has_and_belongs_to_many :tags
  def list_of_tags
    self.tags.map{|tag| tag.name}.join(", ")
  end
  def list_of_comments
    self.comments.map{|comment| comment.text}.join(", ")
  end
end
