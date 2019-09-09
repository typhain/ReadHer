class CreateCrushes < ActiveRecord::Migration[5.2]
  def change
    create_table :crushes do |t|
      t.string :book_title
      t.string :genre
      t.string :author_name
      t.string :author_country
      t.string :description
      t.string :quote
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
