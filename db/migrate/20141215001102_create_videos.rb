class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.text :title
      t.text :subtitle
      t.string :url
      t.text :description
      t.boolean :featured
      t.integer :row_order
      t.text :speaker

      t.timestamps
    end
  end
end
