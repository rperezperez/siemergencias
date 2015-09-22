class CreateSeguimientos < ActiveRecord::Migration
  def change
    create_table :seguimientos do |t|
      t.references :emergencia, index: true
      t.references :dispositivo, index: true
      t.string :lat
      t.string :long
      t.string :mensaje

      t.timestamps
    end
  end
end
