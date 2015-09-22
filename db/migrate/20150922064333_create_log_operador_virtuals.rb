class CreateLogOperadorVirtuals < ActiveRecord::Migration
  def change
    create_table :log_operador_virtuals do |t|
      t.references :operador_virtual, index: true
      t.string :tipo
      t.text :mensaje
      t.datetime :fecha

      t.timestamps
    end
  end
end
