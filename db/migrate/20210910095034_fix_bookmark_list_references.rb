class FixBookmarkListReferences < ActiveRecord::Migration[6.1]
  def change
    remove_reference :bookmarks, :lists
    add_reference :bookmarks, :list, null: false, foreign_key: true
  end
end
