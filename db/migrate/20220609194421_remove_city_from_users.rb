class RemoveCityFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :city
  end
end
