class CreateCrushLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :crush_libraries do |t|
      t.belongs_to :crush, index: true, foreign_key: true
      t.belongs_to :library, index: true, foreign_key: true
      t.timestamps
    end
  end
end
