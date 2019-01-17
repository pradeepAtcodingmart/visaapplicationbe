class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :passport_details, :data_of_issue, :date_of_issue
  end
end
