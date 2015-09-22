class CreateIos < ActiveRecord::Migration
  def change
    create_table :ios do |t|
      t.string :device_token
      t.references :dispositivo, index: true

      t.timestamps
    end
  end
end
