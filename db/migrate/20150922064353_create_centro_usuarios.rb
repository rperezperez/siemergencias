class CreateCentroUsuarios < ActiveRecord::Migration
  def change
    create_table :centro_usuarios do |t|
      t.references :usuario, index: true
      t.references :centro, index: true
      t.string :rol

      t.timestamps
    end
  end
end
