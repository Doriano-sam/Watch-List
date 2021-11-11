class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.movie_id :references
      t.list_id :references

      t.timestamps
    end
  end
end
