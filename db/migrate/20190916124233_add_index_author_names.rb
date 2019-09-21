class AddIndexAuthorNames < ActiveRecord::Migration[5.2]

  def change
    add_index :crushes, :author_name, using: :gist
    add_index :crushes, :book_title, using: :gist
  end
end
