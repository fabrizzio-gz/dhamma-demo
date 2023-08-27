class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :yob
      t.boolean :is_bce

      t.timestamps
    end
  end
end
