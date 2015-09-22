class CreateDispositivos < ActiveRecord::Migration
  def change
    create_table :dispositivos do |t|
      t.references :usuario, index: true
      t.string :codigo
      t.string :descripcion

      t.timestamps
    end
  end
end
