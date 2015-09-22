class CreateAnotacionNetdispatchers < ActiveRecord::Migration
  def change
    create_table :anotacion_netdispatchers do |t|
      t.references :emergencia, index: true
      t.string :centro
      t.text :mensaje
      t.datetime :fecha

      t.timestamps
    end
  end
end
