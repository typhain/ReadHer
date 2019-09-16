class AddIndexAuthorNames < ActiveRecord::Migration[5.2]

  def change
    add_index :crushes, :author_name, using: :gist
  end
end
