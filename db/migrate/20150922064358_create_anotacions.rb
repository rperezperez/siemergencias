class CreateAnotacions < ActiveRecord::Migration
  def change
    create_table :anotacions do |t|
      t.references :emergencia, index: true
      t.references :user, index: true
      t.text :mensaje
      t.datetime :fecha

      t.timestamps
    end
  end
end
