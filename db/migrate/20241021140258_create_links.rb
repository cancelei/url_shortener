class CreateLinks < ActiveRecord::Migration[7.2]
  def change
    create_table :links do |t|
      t.string :url
      t.string :description
      t.string :image
      t.integer :views_count

      t.timestamps
    end
  end
end
