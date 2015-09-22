class CreateTetras < ActiveRecord::Migration
  def change
    create_table :tetras do |t|
      t.string :issi
      t.references :dispositivo, index: true

      t.timestamps
    end
  end
end
