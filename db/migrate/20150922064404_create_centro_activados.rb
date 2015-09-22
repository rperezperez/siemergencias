class CreateCentroActivados < ActiveRecord::Migration
  def change
    create_table :centro_activados do |t|
      t.references :emergencia, index: true
      t.string :centro
      t.string :prioridad
      t.string :area
      t.datetime :fecha_anadido

      t.timestamps
    end
  end
end
