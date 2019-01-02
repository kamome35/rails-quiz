class Post < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :ok1, :boolean
    add_column :posts, :ok2, :boolean
    add_column :posts, :ok3, :boolean
    add_column :posts, :ok4, :boolean
  end
end
