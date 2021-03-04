class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :feature_id
      t.references :property, null: false, foreign_key: true
      t.string :full_address
      t.references :lgasfile, null: false, foreign_key: true
      t.string :state
      t.integer :postcode

      t.timestamps
    end
  end
end
