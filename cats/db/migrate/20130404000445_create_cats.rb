class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :age
      t.date :birthdate
      t.string :color
      t.references :neighborhood
      t.string :sex

      t.timestamps
    end
  end
end
