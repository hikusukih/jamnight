class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :notes
      t.datetime :date

      t.timestamps null: false
    end
  end
end
