class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :birthday, :date
    add_column :users, :cpf, :string
  end
end
