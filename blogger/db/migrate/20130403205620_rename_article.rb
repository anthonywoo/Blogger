class RenameArticle < ActiveRecord::Migration
  def change
    rename_column :taggings, :articles_id, :article_id
    rename_column :taggings, :tags_id, :tag_id
  end
end
