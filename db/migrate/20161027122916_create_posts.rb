class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.string :title
      t.string :purpose
      t.integer :people
      t.integer :dday
      t.text :content

      t.references :user, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
