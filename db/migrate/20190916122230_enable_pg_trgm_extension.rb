class EnablePgTrgmExtension < ActiveRecord::Migration[5.2]

  def up
    execute "create extension pg_trgm;"
    execute "create extension btree_gist"
  end

  def down
    execute "drop extension pg_trgm;"
    execute "drop extension btree_gist"
  end

end
