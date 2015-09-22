class CreatePoblacions < ActiveRecord::Migration
  def change
    create_table :poblacions do |t|
      t.references :centro, index: true
      t.string :nombre
      t.string :codigo
      t.string :pl
      t.string :gc
      t.string :epes

      t.timestamps
    end
  end
end
