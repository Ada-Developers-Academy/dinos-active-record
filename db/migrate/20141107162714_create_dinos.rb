class CreateDinos < ActiveRecord::Migration
  def change
    create_table :dinos do |t|
      t.string :genus
      t.string :name
      t.integer :height
      t.integer :length

      t.timestamps
    end
  end
end
