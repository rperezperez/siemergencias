class CreateEmergencia < ActiveRecord::Migration
  def change
    create_table :emergencia do |t|
      t.string :id_112
      t.string :incidente
      t.string :tipo_incidente
      t.string :subtipo_incidente
      t.string :descripcion
      t.text :comentario
      t.datetime :fecha_activacion_aceptada

      t.timestamps
    end
  end
end
