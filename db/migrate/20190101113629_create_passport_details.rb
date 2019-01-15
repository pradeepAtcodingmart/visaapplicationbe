class CreatePassportDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :passport_details do |t|
      t.string :applicant_id
      t.string :passport_number
      t.string :place_of_issue
      t.string :data_of_issue
      t.string :country_of_issue
      t.string :country

      t.timestamps
    end
  end
end
