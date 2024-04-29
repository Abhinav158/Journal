class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.date :date
      t.string :highlight
      t.decimal :weight
      t.text :notes

      t.timestamps
    end
  end
end
