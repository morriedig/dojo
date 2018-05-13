class CreateModels < ActiveRecord::Migration[5.1]
  def change
    create_table :collect_blogs do |t|
      t.references :user, foreign_key: true
      t.references :blog, foreign_key: true

      t.timestamps
    end
  end
end
