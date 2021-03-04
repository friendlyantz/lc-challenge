class CreateLgasfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :lgasfiles do |t|
      t.integer :code
      t.string :name
      t.string :long_name

      t.timestamps
    end
  end
end
