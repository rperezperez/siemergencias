class CreateDanos < ActiveRecord::Migration
  def change
    create_table :danos do |t|
      t.references :emergencia, index: true
      t.text :descripcion

      t.timestamps
    end
  end
end
