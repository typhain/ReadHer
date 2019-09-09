class CreateCrushes < ActiveRecord::Migration[5.2]
  def change
    create_table :crushes do |t|
      t.string :book_title
      t.string :genre
      t.string :author_name
      t.string :author_country
      t.string :description
      t.string :quote

      t.timestamps
    end
  end
end
