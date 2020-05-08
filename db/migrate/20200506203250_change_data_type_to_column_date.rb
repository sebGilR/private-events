class ChangeDataTypeToColumnDate < ActiveRecord::Migration[6.0]
  def change
    change_column :events, :date, :date
  end
end
