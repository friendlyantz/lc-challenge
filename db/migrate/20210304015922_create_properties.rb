class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.integer :lc_id
      t.references :lgasfile, null: false, foreign_key: true
      t.integer :council_property_number, :limit => 8
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
