class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.references :author, null: false, foreign_key: true
      t.string :message
      t.date :date

      t.timestamps
    end
  end
end
