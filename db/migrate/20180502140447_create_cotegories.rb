class CreateCotegories < ActiveRecord::Migration[5.1]
  def change
    create_table :cotegories do |t|
      t.string :title

      t.timestamps
    end
  end
end
