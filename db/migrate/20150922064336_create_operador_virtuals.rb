class CreateOperadorVirtuals < ActiveRecord::Migration
  def change
    create_table :operador_virtuals do |t|
      t.references :user, index: true
      t.string :descripcion

      t.timestamps
    end
  end
end
