class ChangeDataAgeToPosts < ActiveRecord::Migration[5.0]
  def change
    change_column :posts, :age, :string
  end
end
