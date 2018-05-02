class CreateModels < ActiveRecord::Migration[5.1]
  def change
    create_table :models do |t|
      t.string :collect_blog
      t.references :user, foreign_key: true
      t.references :blog, foreign_key: true

      t.timestamps
    end
  end
end
