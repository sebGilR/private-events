class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.text :description
      t.string :date

      t.timestamps
    end
  end
end
