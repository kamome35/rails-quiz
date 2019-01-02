class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :content
      t.text :answer1
      t.text :answer2
      t.text :answer3
      t.text :answer4
      t.timestamps
    end
  end
end
