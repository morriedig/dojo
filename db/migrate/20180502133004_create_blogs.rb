class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.integer :replies_count
      t.integer :viewed_count
      t.string :photo
      t.integer :auth
      t.boolean :state
      t.references :user

      t.timestamps
    end
  end
end
