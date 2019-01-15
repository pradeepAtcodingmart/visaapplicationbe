class CreateVisaDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :visa_details do |t|
      t.string :applicant_id
      t.string :place_to_be_visited
      t.string :visa_duration_in_month
      t.string :no_of_entries
      t.string :date_of_journey
      t.string :port_of_arrival_india
      t.string :port_of_exited_india
      t.string :last_visited_country
      t.timestamps
    end
  end
end
