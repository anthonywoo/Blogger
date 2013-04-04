class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.references :tags
      t.references :articles
      t.timestamps
    end
  end
end
