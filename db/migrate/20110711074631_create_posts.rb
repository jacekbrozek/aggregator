class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :link
      t.string :description
      t.string :enclosure
      t.integer :source_id

      t.timestamps
    end
  end
end
