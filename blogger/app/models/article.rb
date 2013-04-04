class Article < ActiveRecord::Base
  attr_accessible :title, :body, :tag_list, :image
  has_many :comments

  has_many :taggings
  has_many :tags, through: :taggings

  has_attached_file :image

  def tag_list
    tags.map(&:name).join(", ")
  end

  def tag_list=(tags_string)
    names = tags_string.split(",").map{|s| s.strip.downcase}
    new_or_found_tags = names.map{|name| Tag.find_or_create_by_name(name)}
    self.tags = new_or_found_tags
  end
end
