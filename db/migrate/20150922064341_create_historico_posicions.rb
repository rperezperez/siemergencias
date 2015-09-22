class CreateHistoricoPosicions < ActiveRecord::Migration
  def change
    create_table :historico_posicions do |t|
      t.references :dispositivo, index: true
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
