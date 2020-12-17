class ChangeDataPropertyToPosts < ActiveRecord::Migration[5.0]
  def change
    change_column :posts, :property, :string
  end
end
