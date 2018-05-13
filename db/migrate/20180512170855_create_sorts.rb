class CreateSorts < ActiveRecord::Migration[5.1]
  def change
    create_table :sorts do |t|
      t.references :category
      t.references :blog

      t.timestamps
    end
  end
end
