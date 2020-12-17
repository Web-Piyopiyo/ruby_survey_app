class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :age
      t.integer :gender
      t.integer :property
      t.text :request

      t.timestamps
    end
  end
end
