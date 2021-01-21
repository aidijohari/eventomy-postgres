class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :type
      t.integer :accommodate
      t.string :listing_name
      t.text :summary
      t.string :address
      t.integer :price
      t.boolean :active
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
