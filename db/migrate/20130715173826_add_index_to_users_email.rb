class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
# email uniqueness migration is not predefined so we need this section.
    add_index :users, :email, unique: true
  end
end
