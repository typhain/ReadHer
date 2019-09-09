class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.belongs_to :users, index: true, foreign_key: true
      t.timestamps
    end
  end
end
