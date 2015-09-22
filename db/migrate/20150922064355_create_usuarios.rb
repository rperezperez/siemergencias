class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.references :user, index: true
      t.string :telefono
      t.string :nombre
      t.string :email
      t.string :codigo

      t.timestamps
    end
  end
end
