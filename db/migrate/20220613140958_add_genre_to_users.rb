class AddGenreToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :genre, :string
  end
end
