class CreateNpcs < ActiveRecord::Migration[7.0]
  def change
    create_table :npcs do |t|
      t.string :name
      t.string :address
      t.string :likes
      t.string :image

      t.timestamps
    end
  end
end
