class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :listings, [:user_id, :created_at]
  end
end
