class FixBookmarkReferences < ActiveRecord::Migration[6.1]
  def change
    remove_reference :bookmarks, :movies
    add_reference :bookmarks, :movie, null: false, foreign_key: true
  end
end
