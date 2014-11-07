class CreateEggs < ActiveRecord::Migration
  def change
    create_table :eggs do |t|
      t.integer :dino_id
      t.string :name
      t.string :shell_color

      t.timestamps
    end
  end
end
