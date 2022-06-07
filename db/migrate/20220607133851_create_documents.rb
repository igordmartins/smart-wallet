class CreateDocuments < ActiveRecord::Migration[6.1]
  def change
    create_table :documents do |t|
      t.string :category
      t.boolean :renewal, default: false
      t.date :renew_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
