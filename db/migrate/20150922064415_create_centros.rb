class CreateCentros < ActiveRecord::Migration
  def change
    create_table :centros do |t|
      t.string :codigo
      t.string :nombre

      t.timestamps
    end
  end
end
